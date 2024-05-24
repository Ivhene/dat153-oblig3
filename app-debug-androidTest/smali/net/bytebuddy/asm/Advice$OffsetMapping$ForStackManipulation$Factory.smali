.class public Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final annotationType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription$Generic;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lnet/bytebuddy/description/enumeration/EnumerationDescription;)V
    .locals 2
    .param p2, "enumerationDescription"    # Lnet/bytebuddy/description/enumeration/EnumerationDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/description/enumeration/EnumerationDescription;",
            ")V"
        }
    .end annotation

    .line 3595
    .local p0, "this":Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;, "Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p2}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forEnumeration(Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    invoke-interface {p2}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;-><init>(Ljava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    .line 3596
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 2
    .param p2, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")V"
        }
    .end annotation

    .line 3585
    .local p0, "this":Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;, "Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p2}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription;->CLASS:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;-><init>(Ljava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    .line 3586
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V
    .locals 0
    .param p2, "stackManipulation"    # Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .param p3, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")V"
        }
    .end annotation

    .line 3605
    .local p0, "this":Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;, "Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3606
    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;->annotationType:Ljava/lang/Class;

    .line 3607
    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 3608
    iput-object p3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 3609
    return-void
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/Object;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/lang/Object;",
            ")",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "TS;>;"
        }
    .end annotation

    .line 3622
    .local p0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    if-nez p1, :cond_0

    .line 3623
    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$OfDefaultValue;

    invoke-direct {v0, p0}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$OfDefaultValue;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 3624
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 3625
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(Z)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    .line 3626
    .local v0, "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    .local v1, "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    goto/16 :goto_0

    .line 3627
    .end local v0    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v1    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_1
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    .line 3628
    move-object v0, p1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    .line 3629
    .restart local v0    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    .restart local v1    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    goto/16 :goto_0

    .line 3630
    .end local v0    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v1    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 3631
    move-object v0, p1

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    .line 3632
    .restart local v0    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    .restart local v1    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    goto/16 :goto_0

    .line 3633
    .end local v0    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v1    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_3
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_4

    .line 3634
    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    .line 3635
    .restart local v0    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    .restart local v1    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    goto/16 :goto_0

    .line 3636
    .end local v0    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v1    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_4
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 3637
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    .line 3638
    .restart local v0    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    .restart local v1    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    goto/16 :goto_0

    .line 3639
    .end local v0    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v1    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_5
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 3640
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;->forValue(J)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    .line 3641
    .restart local v0    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    .restart local v1    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    goto/16 :goto_0

    .line 3642
    .end local v0    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v1    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_6
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 3643
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;->forValue(F)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    .line 3644
    .restart local v0    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    .restart local v1    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    goto/16 :goto_0

    .line 3645
    .end local v0    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v1    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_7
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_8

    .line 3646
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->forValue(D)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    .line 3647
    .restart local v0    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    .restart local v1    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    goto/16 :goto_0

    .line 3648
    .end local v0    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v1    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_8
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 3649
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/TextConstant;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/constant/TextConstant;-><init>(Ljava/lang/String;)V

    .line 3650
    .restart local v0    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription;->STRING:Lnet/bytebuddy/description/type/TypeDescription;

    .restart local v1    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    goto/16 :goto_0

    .line 3651
    .end local v0    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v1    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_9
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_a

    .line 3652
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    .line 3653
    .restart local v0    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription;->CLASS:Lnet/bytebuddy/description/type/TypeDescription;

    .restart local v1    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    goto/16 :goto_0

    .line 3654
    .end local v0    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v1    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_a
    instance-of v0, p1, Lnet/bytebuddy/description/type/TypeDescription;

    if-eqz v0, :cond_b

    .line 3655
    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    .line 3656
    .restart local v0    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription;->CLASS:Lnet/bytebuddy/description/type/TypeDescription;

    .restart local v1    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    goto/16 :goto_0

    .line 3657
    .end local v0    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v1    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_b
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_c

    .line 3658
    new-instance v0, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;

    move-object v1, p1

    check-cast v1, Ljava/lang/Enum;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;-><init>(Ljava/lang/Enum;)V

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forEnumeration(Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    .line 3659
    .restart local v0    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    move-object v1, p1

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    .restart local v1    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    goto :goto_0

    .line 3660
    .end local v0    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v1    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_c
    instance-of v0, p1, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    if-eqz v0, :cond_d

    .line 3661
    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forEnumeration(Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    .line 3662
    .restart local v0    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    .restart local v1    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    goto :goto_0

    .line 3663
    .end local v0    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v1    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_d
    sget-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/utility/JavaType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3664
    invoke-static {p1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object v0

    .line 3665
    .local v0, "constant":Lnet/bytebuddy/utility/JavaConstant;
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;

    invoke-direct {v1, v0}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;-><init>(Lnet/bytebuddy/utility/JavaConstant;)V

    .line 3666
    .local v1, "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    invoke-interface {v0}, Lnet/bytebuddy/utility/JavaConstant;->getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 3667
    .local v0, "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    .end local v0    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    .end local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    :cond_e
    sget-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/utility/JavaType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3668
    invoke-static {p1}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object v0

    .line 3669
    .local v0, "constant":Lnet/bytebuddy/utility/JavaConstant;
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;

    invoke-direct {v1, v0}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;-><init>(Lnet/bytebuddy/utility/JavaConstant;)V

    .line 3670
    .restart local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    invoke-interface {v0}, Lnet/bytebuddy/utility/JavaConstant;->getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 3671
    .local v0, "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    .end local v0    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    .end local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    :cond_f
    instance-of v0, p1, Lnet/bytebuddy/utility/JavaConstant;

    if-eqz v0, :cond_10

    .line 3672
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;

    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/utility/JavaConstant;

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;-><init>(Lnet/bytebuddy/utility/JavaConstant;)V

    .line 3673
    .local v0, "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/utility/JavaConstant;

    invoke-interface {v1}, Lnet/bytebuddy/utility/JavaConstant;->getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    .line 3677
    .local v1, "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    :goto_0
    new-instance v2, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;-><init>(Ljava/lang/Class;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    return-object v2

    .line 3675
    .end local v0    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v1    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a constant value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
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
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;->annotationType:Ljava/lang/Class;

    check-cast p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;->annotationType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getAnnotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 3684
    .local p0, "this":Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;, "Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory<TT;>;"
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;->annotationType:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;->annotationType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public make(Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;)Lnet/bytebuddy/asm/Advice$OffsetMapping;
    .locals 5
    .param p1, "target"    # Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;
    .param p3, "adviceType"    # Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "TT;>;",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;",
            ")",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping;"
        }
    .end annotation

    .line 3693
    .local p0, "this":Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;, "Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory<TT;>;"
    .local p2, "annotation":Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<TT;>;"
    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    sget-object v4, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->STATIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v0
.end method
