.class public Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;
.super Ljava/lang/Object;
.source "FieldProxy.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Appender"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field final synthetic this$0:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;

.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;Lnet/bytebuddy/implementation/Implementation$Target;)V
    .locals 1
    .param p1, "this$0"    # Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;
    .param p2, "implementationTarget"    # Lnet/bytebuddy/implementation/Implementation$Target;

    .line 822
    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 823
    invoke-interface {p2}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    .line 824
    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 10
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;
    .param p3, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 832
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->access$200(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;)Lnet/bytebuddy/implementation/MethodAccessorFactory;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;

    invoke-static {v1}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->access$100(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;)Lnet/bytebuddy/description/field/FieldDescription;

    move-result-object v1

    sget-object v2, Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;->DEFAULT:Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/implementation/MethodAccessorFactory;->registerGetterFor(Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    .line 833
    .local v0, "getterMethod":Lnet/bytebuddy/description/method/MethodDescription;
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v2, 0x4

    new-array v2, v2, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v3, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;

    .line 834
    invoke-static {v3}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->access$100(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;)Lnet/bytebuddy/description/field/FieldDescription;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/field/FieldDescription;->isStatic()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    goto :goto_0

    :cond_0
    new-instance v3, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    new-array v7, v5, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 837
    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v8

    aput-object v8, v7, v6

    iget-object v8, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    .line 838
    invoke-interface {v8}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v8

    const-string v9, "instance"

    invoke-static {v9}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v9

    invoke-interface {v8, v9}, Lnet/bytebuddy/description/field/FieldList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v8

    check-cast v8, Lnet/bytebuddy/description/field/FieldList;

    invoke-interface {v8}, Lnet/bytebuddy/description/field/FieldList;->getOnly()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-static {v8}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forField(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    move-result-object v8

    invoke-interface {v8}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;->read()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-direct {v3, v7}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    :goto_0
    aput-object v3, v2, v6

    .line 839
    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;

    .line 840
    invoke-static {v3}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->access$300(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;)Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    move-result-object v3

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v4

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v6

    sget-object v7, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->DYNAMIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {v3, v4, v6, v7}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    aput-object v3, v2, v5

    .line 841
    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-direct {v1, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 842
    invoke-virtual {v1, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v1

    .line 843
    .local v1, "stackSize":Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    new-instance v2, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result v3

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;-><init>(II)V

    return-object v2
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
