.class public Lnet/bytebuddy/implementation/bytecode/member/HandleInvocation;
.super Ljava/lang/Object;
.source "HandleInvocation.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final INVOKE_EXACT:Ljava/lang/String; = "invokeExact"

.field private static final METHOD_HANDLE_NAME:Ljava/lang/String; = "java/lang/invoke/MethodHandle"


# instance fields
.field private final methodType:Lnet/bytebuddy/utility/JavaConstant$MethodType;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/utility/JavaConstant$MethodType;)V
    .locals 0
    .param p1, "methodType"    # Lnet/bytebuddy/utility/JavaConstant$MethodType;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/HandleInvocation;->methodType:Lnet/bytebuddy/utility/JavaConstant$MethodType;

    .line 53
    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 6
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;

    .line 66
    const/16 v1, 0xb6

    const-string v2, "java/lang/invoke/MethodHandle"

    const-string v3, "invokeExact"

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/HandleInvocation;->methodType:Lnet/bytebuddy/utility/JavaConstant$MethodType;

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 67
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/HandleInvocation;->methodType:Lnet/bytebuddy/utility/JavaConstant$MethodType;

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/HandleInvocation;->methodType:Lnet/bytebuddy/utility/JavaConstant$MethodType;

    invoke-virtual {v1}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getParameterTypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList;->getStackSize()I

    move-result v1

    sub-int/2addr v0, v1

    .line 68
    .local v0, "size":I
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;-><init>(II)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/HandleInvocation;->methodType:Lnet/bytebuddy/utility/JavaConstant$MethodType;

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/member/HandleInvocation;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/member/HandleInvocation;->methodType:Lnet/bytebuddy/utility/JavaConstant$MethodType;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/member/HandleInvocation;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/HandleInvocation;->methodType:Lnet/bytebuddy/utility/JavaConstant$MethodType;

    invoke-virtual {v1}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 59
    const/4 v0, 0x1

    return v0
.end method
