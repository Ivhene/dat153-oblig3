.class public Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;
.super Ljava/lang/Object;
.source "MethodInvocation.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DynamicInvocation"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field private final arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/utility/JavaConstant;",
            ">;"
        }
    .end annotation
.end field

.field private final bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private final methodName:Ljava/lang/String;

.field private final parameterTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final returnType:Lnet/bytebuddy/description/type/TypeDescription;

.field final synthetic this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "returnType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p5, "bootstrapMethod"    # Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/utility/JavaConstant;",
            ">;)V"
        }
    .end annotation

    .line 482
    .local p4, "parameterTypes":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/type/TypeDescription;>;"
    .local p6, "arguments":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/utility/JavaConstant;>;"
    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->methodName:Ljava/lang/String;

    .line 484
    iput-object p3, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 485
    iput-object p4, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->parameterTypes:Ljava/util/List;

    .line 486
    iput-object p5, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 487
    iput-object p6, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->arguments:Ljava/util/List;

    .line 488
    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 12
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 502
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->parameterTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription;

    .line 503
    .local v2, "parameterType":Lnet/bytebuddy/description/type/TypeDescription;
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .end local v2    # "parameterType":Lnet/bytebuddy/description/type/TypeDescription;
    goto :goto_0

    .line 505
    :cond_0
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, "methodDescriptor":Ljava/lang/String;
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->arguments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Object;

    .line 507
    .local v2, "constant":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 508
    .local v3, "index":I
    iget-object v4, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->arguments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/utility/JavaConstant;

    .line 509
    .local v5, "argument":Lnet/bytebuddy/utility/JavaConstant;
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "index":I
    .local v6, "index":I
    sget-object v7, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;

    invoke-interface {v5, v7}, Lnet/bytebuddy/utility/JavaConstant;->accept(Lnet/bytebuddy/utility/JavaConstant$Visitor;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v2, v3

    .line 510
    .end local v5    # "argument":Lnet/bytebuddy/utility/JavaConstant;
    move v3, v6

    goto :goto_1

    .line 511
    .end local v6    # "index":I
    .restart local v3    # "index":I
    :cond_1
    iget-object v4, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->methodName:Ljava/lang/String;

    new-instance v11, Lnet/bytebuddy/jar/asm/Handle;

    iget-object v5, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    .line 513
    invoke-static {v5}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->access$200(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I

    move-result v5

    iget-object v6, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-static {v6}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->access$300(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I

    move-result v6

    if-eq v5, v6, :cond_3

    invoke-interface {p2}, Lnet/bytebuddy/implementation/Implementation$Context;->getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;

    move-result-object v5

    sget-object v6, Lnet/bytebuddy/ClassFileVersion;->JAVA_V11:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v5, v6}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 514
    :cond_2
    iget-object v5, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    .line 515
    invoke-static {v5}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->access$300(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I

    move-result v5

    move v6, v5

    goto :goto_3

    .line 513
    :cond_3
    :goto_2
    iget-object v5, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    .line 514
    invoke-static {v5}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->access$200(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I

    move-result v5

    move v6, v5

    .line 515
    :goto_3
    iget-object v5, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 516
    invoke-interface {v5}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v7

    iget-object v5, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 517
    invoke-interface {v5}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v8

    iget-object v5, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 518
    invoke-interface {v5}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDescriptor()Ljava/lang/String;

    move-result-object v9

    iget-object v5, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 519
    invoke-interface {v5}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v10

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lnet/bytebuddy/jar/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 511
    invoke-virtual {p1, v4, v1, v11, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    .line 521
    iget-object v4, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v4

    invoke-virtual {v4}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v4

    iget-object v5, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->parameterTypes:Ljava/util/List;

    invoke-static {v5}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 522
    .local v4, "stackSize":I
    new-instance v5, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-direct {v5, v4, v6}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;-><init>(II)V

    return-object v5
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->methodName:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->methodName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->parameterTypes:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->parameterTypes:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->arguments:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->arguments:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->methodName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->parameterTypes:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->arguments:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 494
    const/4 v0, 0x1

    return v0
.end method
