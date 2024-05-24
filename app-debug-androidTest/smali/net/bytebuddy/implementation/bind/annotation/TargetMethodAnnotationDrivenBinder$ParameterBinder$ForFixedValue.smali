.class public abstract Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue;
.super Ljava/lang/Object;
.source "TargetMethodAnnotationDrivenBinder.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForFixedValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue$OfConstant;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<",
        "TS;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 224
    .local p0, "this":Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue;, "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract bind(Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/ParameterDescription;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "TS;>;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public bind(Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/ParameterDescription;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding;
    .locals 8
    .param p2, "source"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p3, "target"    # Lnet/bytebuddy/description/method/ParameterDescription;
    .param p4, "implementationTarget"    # Lnet/bytebuddy/implementation/Implementation$Target;
    .param p5, "assigner"    # Lnet/bytebuddy/implementation/bytecode/assign/Assigner;
    .param p6, "typing"    # Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "TS;>;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            "Lnet/bytebuddy/implementation/Implementation$Target;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;",
            ")",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding<",
            "*>;"
        }
    .end annotation

    .line 235
    .local p0, "this":Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue;, "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue<TS;>;"
    .local p1, "annotation":Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<TS;>;"
    invoke-virtual {p0, p1, p2, p3}, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue;->bind(Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/ParameterDescription;)Ljava/lang/Object;

    move-result-object v0

    .line 236
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 237
    new-instance v1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Anonymous;

    invoke-interface {p3}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Anonymous;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v1

    .line 241
    :cond_0
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 242
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(Z)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    .line 243
    .local v1, "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    .local v2, "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    goto/16 :goto_0

    .line 244
    .end local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_1
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_2

    .line 245
    move-object v1, v0

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    .line 246
    .restart local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    .restart local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    goto/16 :goto_0

    .line 247
    .end local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_2
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_3

    .line 248
    move-object v1, v0

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    .line 249
    .restart local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    .restart local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    goto/16 :goto_0

    .line 250
    .end local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_3
    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_4

    .line 251
    move-object v1, v0

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    .line 252
    .restart local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    .restart local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    goto/16 :goto_0

    .line 253
    .end local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_4
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 254
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    .line 255
    .restart local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    .restart local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    goto/16 :goto_0

    .line 256
    .end local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_5
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 257
    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;->forValue(J)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    .line 258
    .restart local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    .restart local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    goto/16 :goto_0

    .line 259
    .end local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_6
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 260
    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;->forValue(F)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    .line 261
    .restart local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    .restart local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    goto/16 :goto_0

    .line 262
    .end local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_7
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_8

    .line 263
    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->forValue(D)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    .line 264
    .restart local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    .restart local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    goto/16 :goto_0

    .line 265
    .end local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_8
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 266
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/constant/TextConstant;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lnet/bytebuddy/implementation/bytecode/constant/TextConstant;-><init>(Ljava/lang/String;)V

    .line 267
    .restart local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription;->STRING:Lnet/bytebuddy/description/type/TypeDescription;

    .restart local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    goto/16 :goto_0

    .line 268
    .end local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_9
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_a

    .line 269
    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    .line 270
    .restart local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription;->CLASS:Lnet/bytebuddy/description/type/TypeDescription;

    .restart local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    goto/16 :goto_0

    .line 271
    .end local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_a
    instance-of v1, v0, Lnet/bytebuddy/description/type/TypeDescription;

    if-eqz v1, :cond_b

    .line 272
    move-object v1, v0

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    .line 273
    .restart local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription;->CLASS:Lnet/bytebuddy/description/type/TypeDescription;

    .restart local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    goto/16 :goto_0

    .line 274
    .end local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_b
    instance-of v1, v0, Ljava/lang/Enum;

    if-eqz v1, :cond_c

    .line 275
    new-instance v1, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;

    move-object v2, v0

    check-cast v2, Ljava/lang/Enum;

    invoke-direct {v1, v2}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;-><init>(Ljava/lang/Enum;)V

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forEnumeration(Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    .line 276
    .restart local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    move-object v2, v0

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {v2}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    .restart local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    goto :goto_0

    .line 277
    .end local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_c
    instance-of v1, v0, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    if-eqz v1, :cond_d

    .line 278
    move-object v1, v0

    check-cast v1, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forEnumeration(Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    .line 279
    .restart local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    move-object v2, v0

    check-cast v2, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    .restart local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    goto :goto_0

    .line 280
    .end local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_d
    sget-object v1, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v1, v0}, Lnet/bytebuddy/utility/JavaType;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 281
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;-><init>(Lnet/bytebuddy/utility/JavaConstant;)V

    .line 282
    .restart local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    sget-object v2, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v2}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    .restart local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    goto :goto_0

    .line 283
    .end local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_e
    instance-of v1, v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    if-eqz v1, :cond_f

    .line 284
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;

    move-object v2, v0

    check-cast v2, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    invoke-direct {v1, v2}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;-><init>(Lnet/bytebuddy/utility/JavaConstant;)V

    .line 285
    .restart local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    sget-object v2, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v2}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    .restart local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    goto :goto_0

    .line 286
    .end local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_f
    sget-object v1, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v1, v0}, Lnet/bytebuddy/utility/JavaType;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 287
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;-><init>(Lnet/bytebuddy/utility/JavaConstant;)V

    .line 288
    .restart local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    sget-object v2, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v2}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    .restart local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    goto :goto_0

    .line 289
    .end local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_10
    instance-of v1, v0, Lnet/bytebuddy/utility/JavaConstant;

    if-eqz v1, :cond_11

    .line 290
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;

    move-object v2, v0

    check-cast v2, Lnet/bytebuddy/utility/JavaConstant;

    invoke-direct {v1, v2}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;-><init>(Lnet/bytebuddy/utility/JavaConstant;)V

    .line 291
    .restart local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    move-object v2, v0

    check-cast v2, Lnet/bytebuddy/utility/JavaConstant;

    invoke-interface {v2}, Lnet/bytebuddy/utility/JavaConstant;->getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    .line 295
    .restart local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    :goto_0
    new-instance v3, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Anonymous;

    new-instance v4, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v5, 0x2

    new-array v5, v5, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    .line 297
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v6

    invoke-interface {p3}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v7

    invoke-interface {p5, v6, v7, p6}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-direct {v4, v5}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    invoke-direct {v3, v4}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Anonymous;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 295
    return-object v3

    .line 293
    .end local v1    # "stackManipulation":Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .end local v2    # "suppliedType":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not able to save in class\'s constant pool: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
