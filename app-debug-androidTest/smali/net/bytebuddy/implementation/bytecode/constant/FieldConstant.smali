.class public Lnet/bytebuddy/implementation/bytecode/constant/FieldConstant;
.super Ljava/lang/Object;
.source "FieldConstant.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/constant/FieldConstant$Cached;
    }
.end annotation


# instance fields
.field private final fieldDescription:Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)V
    .locals 0
    .param p1, "fieldDescription"    # Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/constant/FieldConstant;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    .line 46
    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 8
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;

    .line 69
    :try_start_0
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v1, 0x3

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/constant/FieldConstant;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    .line 70
    invoke-interface {v2}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lnet/bytebuddy/implementation/bytecode/constant/TextConstant;

    iget-object v4, p0, Lnet/bytebuddy/implementation/bytecode/constant/FieldConstant;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    .line 71
    invoke-interface {v4}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lnet/bytebuddy/implementation/bytecode/constant/TextConstant;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    const-class v5, Ljava/lang/Class;

    const-string v6, "getDeclaredField"

    new-array v4, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v3

    .line 72
    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 73
    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "exception":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot locate Class::getDeclaredField"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public cached()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 54
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/FieldConstant$Cached;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/constant/FieldConstant$Cached;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 86
    if-ne p0, p1, :cond_0

    .line 87
    const/4 v0, 0x1

    return v0

    .line 88
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/implementation/bytecode/constant/FieldConstant;

    .line 92
    .local v0, "fieldConstant":Lnet/bytebuddy/implementation/bytecode/constant/FieldConstant;
    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/constant/FieldConstant;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    iget-object v2, v0, Lnet/bytebuddy/implementation/bytecode/constant/FieldConstant;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 89
    .end local v0    # "fieldConstant":Lnet/bytebuddy/implementation/bytecode/constant/FieldConstant;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 81
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/FieldConstant;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 61
    const/4 v0, 0x1

    return v0
.end method
