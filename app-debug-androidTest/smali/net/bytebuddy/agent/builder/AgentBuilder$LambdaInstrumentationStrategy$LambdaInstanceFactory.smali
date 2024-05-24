.class public Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory;
.super Ljava/lang/Object;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LambdaInstanceFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$BridgeMethodImplementation;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$SerializationImplementation;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$FactoryImplementation;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$ConstructorImplementation;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final FIELD_PREFIX:Ljava/lang/String; = "arg$"

.field private static final LAMBDA_FACTORY:Ljava/lang/String; = "get$Lambda"

.field private static final LAMBDA_NAME_COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final LAMBDA_TYPE_INFIX:Ljava/lang/String; = "$$Lambda$ByteBuddy$"

.field private static final NOT_PREVIOUSLY_DEFINED:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final byteBuddy:Lnet/bytebuddy/ByteBuddy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7976
    nop

    .line 7971
    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory;->NOT_PREVIOUSLY_DEFINED:Ljava/lang/Class;

    .line 7976
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory;->LAMBDA_NAME_COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/ByteBuddy;)V
    .locals 0
    .param p1, "byteBuddy"    # Lnet/bytebuddy/ByteBuddy;

    .line 7988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7989
    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    .line 7990
    return-void
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
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/ByteBuddy;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    invoke-virtual {v1}, Lnet/bytebuddy/ByteBuddy;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public make(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZLjava/util/List;Ljava/util/List;Ljava/util/Collection;)[B
    .locals 30
    .param p1, "targetTypeLookup"    # Ljava/lang/Object;
    .param p2, "lambdaMethodName"    # Ljava/lang/String;
    .param p3, "factoryMethodType"    # Ljava/lang/Object;
    .param p4, "lambdaMethodType"    # Ljava/lang/Object;
    .param p5, "targetMethodHandle"    # Ljava/lang/Object;
    .param p6, "specializedLambdaMethodType"    # Ljava/lang/Object;
    .param p7, "serializable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/instrument/ClassFileTransformer;",
            ">;)[B"
        }
    .end annotation

    .line 8017
    .local p8, "markerInterfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .local p9, "additionalBridges":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p10, "classFileTransformers":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/instrument/ClassFileTransformer;>;"
    move-object/from16 v8, p2

    move-object/from16 v9, p8

    invoke-static/range {p3 .. p3}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object v10

    .line 8018
    .local v10, "factoryMethod":Lnet/bytebuddy/utility/JavaConstant$MethodType;
    invoke-static/range {p4 .. p4}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object v11

    .line 8019
    .local v11, "lambdaMethod":Lnet/bytebuddy/utility/JavaConstant$MethodType;
    move-object/from16 v12, p1

    move-object/from16 v13, p5

    invoke-static {v13, v12}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ofLoaded(Ljava/lang/Object;Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object v14

    .line 8020
    .local v14, "targetMethod":Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
    invoke-static/range {p6 .. p6}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object v15

    .line 8021
    .local v15, "specializedLambdaMethod":Lnet/bytebuddy/utility/JavaConstant$MethodType;
    invoke-static/range {p1 .. p1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->lookupType(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v16

    .line 8022
    .local v16, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$$Lambda$ByteBuddy$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory;->LAMBDA_NAME_COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 8023
    .local v7, "lambdaClassName":Ljava/lang/String;
    move-object/from16 v6, p0

    iget-object v0, v6, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    .line 8024
    invoke-virtual {v10}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    sget-object v2, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->NO_CONSTRUCTORS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    invoke-virtual {v0, v1, v2}, Lnet/bytebuddy/ByteBuddy;->subclass(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    const/4 v5, 0x2

    new-array v1, v5, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;

    sget-object v2, Lnet/bytebuddy/description/modifier/TypeManifestation;->FINAL:Lnet/bytebuddy/description/modifier/TypeManifestation;

    const/16 v17, 0x0

    aput-object v2, v1, v17

    sget-object v2, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 8025
    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->modifiers([Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    .line 8026
    invoke-interface {v0, v9}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->implement(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;

    move-result-object v0

    .line 8027
    invoke-interface {v0, v7}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;->name(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    new-array v1, v4, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v2, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v2, v1, v17

    .line 8028
    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineConstructor([Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object v0

    .line 8029
    invoke-virtual {v10}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getParameterTypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->withParameters(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$ConstructorImplementation;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$ConstructorImplementation;

    .line 8030
    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v0

    .line 8031
    invoke-static/range {p2 .. p2}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    .line 8032
    invoke-virtual {v11}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getParameterTypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArguments(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    .line 8033
    invoke-virtual {v11}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->returns(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    .line 8031
    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation;

    invoke-direct {v1, v14, v15}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation;-><init>(Lnet/bytebuddy/utility/JavaConstant$MethodHandle;Lnet/bytebuddy/utility/JavaConstant$MethodType;)V

    .line 8034
    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v0

    .line 8035
    .local v0, "builder":Lnet/bytebuddy/dynamic/DynamicType$Builder;, "Lnet/bytebuddy/dynamic/DynamicType$Builder<*>;"
    const/4 v1, 0x0

    .line 8036
    .local v1, "index":I
    invoke-virtual {v10}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getParameterTypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move/from16 v18, v1

    .end local v1    # "index":I
    .local v18, "index":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    .line 8037
    .local v1, "capturedType":Lnet/bytebuddy/description/type/TypeDescription;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arg$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v18, 0x1

    .end local v18    # "index":I
    .local v4, "index":I
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v2

    new-array v2, v5, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;

    sget-object v18, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v18, v2, v17

    sget-object v18, Lnet/bytebuddy/description/modifier/FieldManifestation;->FINAL:Lnet/bytebuddy/description/modifier/FieldManifestation;

    const/16 v19, 0x1

    aput-object v18, v2, v19

    invoke-interface {v0, v3, v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineField(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable;

    move-result-object v0

    .line 8038
    .end local v1    # "capturedType":Lnet/bytebuddy/description/type/TypeDescription;
    move/from16 v18, v4

    move-object/from16 v2, v20

    const/4 v4, 0x1

    goto :goto_0

    .line 8039
    .end local v4    # "index":I
    .restart local v18    # "index":I
    :cond_0
    invoke-virtual {v10}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getParameterTypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8040
    invoke-virtual {v10}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    new-array v2, v5, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v3, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v3, v2, v17

    sget-object v3, Lnet/bytebuddy/description/modifier/Ownership;->STATIC:Lnet/bytebuddy/description/modifier/Ownership;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "get$Lambda"

    invoke-interface {v0, v3, v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineMethod(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object v1

    .line 8041
    invoke-virtual {v10}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getParameterTypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->withParameters(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object v1

    sget-object v2, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$FactoryImplementation;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$FactoryImplementation;

    .line 8042
    invoke-interface {v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v0

    .line 8044
    :cond_1
    if-eqz p7, :cond_3

    .line 8045
    const-class v1, Ljava/io/Serializable;

    invoke-interface {v9, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8046
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/reflect/Type;

    const-class v2, Ljava/io/Serializable;

    aput-object v2, v1, v17

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->implement([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;

    move-result-object v0

    goto :goto_1

    .line 8045
    :cond_2
    const/4 v4, 0x1

    .line 8048
    :goto_1
    const-class v1, Ljava/lang/Object;

    new-array v2, v4, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v3, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v3, v2, v17

    const-string v3, "writeReplace"

    invoke-interface {v0, v3, v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineMethod(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object v3

    new-instance v2, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$SerializationImplementation;

    .line 8049
    invoke-static/range {v16 .. v16}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v19

    .line 8050
    invoke-virtual {v10}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v20

    .line 8054
    invoke-static/range {p6 .. p6}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object v21

    move-object v1, v2

    move-object/from16 v22, v0

    move-object v0, v2

    .end local v0    # "builder":Lnet/bytebuddy/dynamic/DynamicType$Builder;, "Lnet/bytebuddy/dynamic/DynamicType$Builder<*>;"
    .local v22, "builder":Lnet/bytebuddy/dynamic/DynamicType$Builder;, "Lnet/bytebuddy/dynamic/DynamicType$Builder<*>;"
    move-object/from16 v2, v19

    move-object v9, v3

    move-object/from16 v3, v20

    move v12, v4

    move-object/from16 v4, p2

    move-object v5, v11

    move-object v6, v14

    move-object/from16 v23, v7

    .end local v7    # "lambdaClassName":Ljava/lang/String;
    .local v23, "lambdaClassName":Ljava/lang/String;
    move-object/from16 v7, v21

    invoke-direct/range {v1 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$SerializationImplementation;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Lnet/bytebuddy/utility/JavaConstant$MethodType;Lnet/bytebuddy/utility/JavaConstant$MethodHandle;Lnet/bytebuddy/utility/JavaConstant$MethodType;)V

    .line 8049
    invoke-interface {v9, v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v0

    .end local v22    # "builder":Lnet/bytebuddy/dynamic/DynamicType$Builder;, "Lnet/bytebuddy/dynamic/DynamicType$Builder<*>;"
    .restart local v0    # "builder":Lnet/bytebuddy/dynamic/DynamicType$Builder;, "Lnet/bytebuddy/dynamic/DynamicType$Builder<*>;"
    goto :goto_2

    .line 8055
    .end local v23    # "lambdaClassName":Ljava/lang/String;
    .restart local v7    # "lambdaClassName":Ljava/lang/String;
    :cond_3
    move-object/from16 v23, v7

    const/4 v12, 0x1

    .end local v7    # "lambdaClassName":Ljava/lang/String;
    .restart local v23    # "lambdaClassName":Ljava/lang/String;
    invoke-virtual {v10}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    const-class v2, Ljava/io/Serializable;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8056
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v2, v12, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v3, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v3, v2, v17

    const-string v3, "readObject"

    invoke-interface {v0, v3, v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineMethod(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/io/ObjectInputStream;

    aput-object v3, v2, v17

    .line 8057
    invoke-interface {v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->withParameters([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/io/NotSerializableException;

    aput-object v3, v2, v17

    .line 8058
    invoke-interface {v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->throwing([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object v1

    const-class v2, Ljava/io/NotSerializableException;

    .line 8059
    const-string v3, "Non-serializable lambda"

    invoke-static {v2, v3}, Lnet/bytebuddy/implementation/ExceptionMethod;->throwing(Ljava/lang/Class;Ljava/lang/String;)Lnet/bytebuddy/implementation/Implementation;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v4, v12, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v5, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v5, v4, v17

    .line 8060
    const-string v5, "writeObject"

    invoke-interface {v1, v5, v2, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->defineMethod(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/reflect/Type;

    const-class v4, Ljava/io/ObjectOutputStream;

    aput-object v4, v2, v17

    .line 8061
    invoke-interface {v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->withParameters([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/reflect/Type;

    const-class v4, Ljava/io/NotSerializableException;

    aput-object v4, v2, v17

    .line 8062
    invoke-interface {v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->throwing([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object v1

    const-class v2, Ljava/io/NotSerializableException;

    .line 8063
    invoke-static {v2, v3}, Lnet/bytebuddy/implementation/ExceptionMethod;->throwing(Ljava/lang/Class;Ljava/lang/String;)Lnet/bytebuddy/implementation/Implementation;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v0

    .line 8065
    :cond_4
    :goto_2
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    .end local v0    # "builder":Lnet/bytebuddy/dynamic/DynamicType$Builder;, "Lnet/bytebuddy/dynamic/DynamicType$Builder<*>;"
    .local v2, "builder":Lnet/bytebuddy/dynamic/DynamicType$Builder;, "Lnet/bytebuddy/dynamic/DynamicType$Builder<*>;"
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 8066
    .local v0, "additionalBridgeType":Ljava/lang/Object;
    invoke-static {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object v3

    .line 8067
    .local v3, "additionalBridge":Lnet/bytebuddy/utility/JavaConstant$MethodType;
    invoke-virtual {v3}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v7, Lnet/bytebuddy/description/modifier/MethodManifestation;->BRIDGE:Lnet/bytebuddy/description/modifier/MethodManifestation;

    aput-object v7, v6, v17

    sget-object v7, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v7, v6, v12

    invoke-interface {v2, v8, v4, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineMethod(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object v4

    .line 8068
    invoke-virtual {v3}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getParameterTypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v6

    invoke-interface {v4, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->withParameters(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object v4

    new-instance v6, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$BridgeMethodImplementation;

    invoke-direct {v6, v8, v11}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$BridgeMethodImplementation;-><init>(Ljava/lang/String;Lnet/bytebuddy/utility/JavaConstant$MethodType;)V

    .line 8069
    invoke-interface {v4, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v2

    .line 8070
    .end local v0    # "additionalBridgeType":Ljava/lang/Object;
    .end local v3    # "additionalBridge":Lnet/bytebuddy/utility/JavaConstant$MethodType;
    goto :goto_3

    .line 8071
    :cond_5
    invoke-interface {v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/DynamicType$Unloaded;->getBytes()[B

    move-result-object v0

    .line 8072
    .local v0, "classFile":[B
    invoke-interface/range {p10 .. p10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v0

    .end local v0    # "classFile":[B
    .local v3, "classFile":[B
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/instrument/ClassFileTransformer;

    .line 8074
    .local v4, "classFileTransformer":Ljava/lang/instrument/ClassFileTransformer;
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8075
    const/16 v0, 0x2e

    const/16 v5, 0x2f

    move-object/from16 v6, v23

    .end local v23    # "lambdaClassName":Ljava/lang/String;
    .local v6, "lambdaClassName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v6, v0, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v26

    sget-object v27, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory;->NOT_PREVIOUSLY_DEFINED:Ljava/lang/Class;

    .line 8077
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v28

    .line 8074
    move-object/from16 v24, v4

    move-object/from16 v29, v3

    invoke-interface/range {v24 .. v29}, Ljava/lang/instrument/ClassFileTransformer;->transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8079
    .local v0, "transformedClassFile":[B
    if-nez v0, :cond_6

    move-object v5, v3

    goto :goto_5

    :cond_6
    move-object v5, v0

    :goto_5
    move-object v0, v5

    .line 8084
    .end local v3    # "classFile":[B
    .local v0, "classFile":[B
    move-object v3, v0

    goto :goto_6

    .line 8082
    .end local v0    # "classFile":[B
    .restart local v3    # "classFile":[B
    :catchall_0
    move-exception v0

    goto :goto_6

    .end local v6    # "lambdaClassName":Ljava/lang/String;
    .restart local v23    # "lambdaClassName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v6, v23

    .line 8085
    .end local v4    # "classFileTransformer":Ljava/lang/instrument/ClassFileTransformer;
    .end local v23    # "lambdaClassName":Ljava/lang/String;
    .restart local v6    # "lambdaClassName":Ljava/lang/String;
    :goto_6
    move-object/from16 v23, v6

    goto :goto_4

    .line 8086
    .end local v6    # "lambdaClassName":Ljava/lang/String;
    .restart local v23    # "lambdaClassName":Ljava/lang/String;
    :cond_7
    return-object v3
.end method
