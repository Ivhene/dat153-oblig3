.class public Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetterDelegation;
.super Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;
.source "Implementation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/Implementation$Context$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FieldGetterDelegation"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;


# direct methods
.method private constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/modifier/Visibility;Lnet/bytebuddy/description/field/FieldDescription;)V
    .locals 0
    .param p1, "methodDescription"    # Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .param p2, "visibility"    # Lnet/bytebuddy/description/modifier/Visibility;
    .param p3, "fieldDescription"    # Lnet/bytebuddy/description/field/FieldDescription;

    .line 1605
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/modifier/Visibility;)V

    .line 1606
    iput-object p3, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetterDelegation;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    .line 1607
    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;Lnet/bytebuddy/description/field/FieldDescription;)V
    .locals 2
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "accessType"    # Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;
    .param p4, "fieldDescription"    # Lnet/bytebuddy/description/field/FieldDescription;

    .line 1594
    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetter;

    invoke-direct {v0, p1, p4, p2}, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetter;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/field/FieldDescription;Ljava/lang/String;)V

    invoke-virtual {p3}, Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;->getVisibility()Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4}, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetterDelegation;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/modifier/Visibility;Lnet/bytebuddy/description/field/FieldDescription;)V

    .line 1595
    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 4
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;
    .param p3, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 1618
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v1, 0x3

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetterDelegation;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    .line 1619
    invoke-interface {v2}, Lnet/bytebuddy/description/field/FieldDescription;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    goto :goto_0

    .line 1621
    :cond_0
    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetterDelegation;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    .line 1622
    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forField(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;->read()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetterDelegation;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    .line 1623
    invoke-interface {v2}, Lnet/bytebuddy/description/field/FieldDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 1624
    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    .line 1625
    .local v0, "stackSize":Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result v2

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;-><init>(II)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetterDelegation;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    check-cast p1, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetterDelegation;

    iget-object p1, p1, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetterDelegation;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetterDelegation;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected with(Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;)Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;
    .locals 4
    .param p1, "accessType"    # Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;

    .line 1611
    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetterDelegation;

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetterDelegation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetterDelegation;->visibility:Lnet/bytebuddy/description/modifier/Visibility;

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;->getVisibility()Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/bytebuddy/description/modifier/Visibility;->expandTo(Lnet/bytebuddy/description/modifier/Visibility;)Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetterDelegation;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetterDelegation;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/modifier/Visibility;Lnet/bytebuddy/description/field/FieldDescription;)V

    return-object v0
.end method
