.class Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;
.super Ljava/lang/Object;
.source "InstrumentationMemberAccessor.java"

# interfaces
.implements Lorg/mockito/plugins/MemberAccessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;
    }
.end annotation


# static fields
.field private static final DISPATCHER:Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;

.field private static final INITIALIZATION_ERROR:Ljava/lang/Throwable;

.field private static final INSTRUMENTATION:Ljava/lang/instrument/Instrumentation;

.field private static final WRAPPERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final getModule:Ljava/lang/invoke/MethodHandle;

.field private final isOpen:Ljava/lang/invoke/MethodHandle;

.field private final privateLookupIn:Ljava/lang/invoke/MethodHandle;

.field private final redefineModule:Ljava/lang/invoke/MethodHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 29
    const-string v0, "invokeWithArguments"

    const-string v1, "setAccessible"

    const-string v2, "getModule"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->WRAPPERS:Ljava/util/Map;

    .line 37
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Boolean;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Byte;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Short;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Character;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Long;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Float;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Double;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :try_start_0
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->install()Ljava/lang/instrument/Instrumentation;

    move-result-object v3

    .line 55
    .local v3, "instrumentation":Ljava/lang/instrument/Instrumentation;
    new-instance v4, Lnet/bytebuddy/ByteBuddy;

    invoke-direct {v4}, Lnet/bytebuddy/ByteBuddy;-><init>()V

    const-class v5, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;

    .line 57
    invoke-virtual {v4, v5}, Lnet/bytebuddy/ByteBuddy;->subclass(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v4

    const-string v5, "getLookup"

    .line 58
    invoke-static {v5}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v5

    invoke-interface {v4, v5}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object v4

    const-class v5, Ljava/lang/invoke/MethodHandles;

    const-string v6, "lookup"

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Class;

    .line 59
    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-static {v5}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v5

    invoke-interface {v4, v5}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v4

    .line 60
    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v5

    invoke-interface {v4, v5}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object v4

    const-class v5, Ljava/lang/Class;

    new-array v6, v7, [Ljava/lang/Class;

    .line 62
    invoke-virtual {v5, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v2

    const-class v5, Ljava/lang/Object;

    const-string v6, "getClass"

    new-array v8, v7, [Ljava/lang/Class;

    .line 65
    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 64
    invoke-static {v5}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v5

    .line 63
    invoke-virtual {v2, v5}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onMethodCall(Lnet/bytebuddy/implementation/MethodCall;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v2

    .line 61
    invoke-interface {v4, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v2

    .line 66
    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-interface {v2, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object v2

    const-class v4, Ljava/lang/reflect/AccessibleObject;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    .line 69
    invoke-virtual {v4, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 68
    invoke-static {v1}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v7}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onArgument(I)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v1

    filled-new-array {v5}, [I

    move-result-object v4

    .line 72
    invoke-virtual {v1, v4}, Lnet/bytebuddy/implementation/MethodCall;->withArgument([I)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v1

    .line 67
    invoke-interface {v2, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v1

    .line 73
    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object v1

    const-class v2, Ljava/lang/invoke/MethodHandle;

    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, [Ljava/lang/Object;

    aput-object v6, v4, v7

    .line 76
    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v7}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onArgument(I)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v0

    filled-new-array {v5}, [I

    move-result-object v2

    .line 79
    invoke-virtual {v0, v2}, Lnet/bytebuddy/implementation/MethodCall;->withArgument([I)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v0

    .line 74
    invoke-interface {v1, v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object v0

    const-class v1, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;

    .line 82
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget-object v2, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->WRAPPER:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    .line 81
    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Unloaded;->load(Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Loaded;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/DynamicType$Loaded;->getLoaded()Ljava/lang/Class;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Class;

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .local v0, "dispatcher":Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;
    const/4 v1, 0x0

    .line 92
    .local v1, "throwable":Ljava/lang/Throwable;
    goto :goto_0

    .line 88
    .end local v0    # "dispatcher":Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;
    .end local v1    # "throwable":Ljava/lang/Throwable;
    .end local v3    # "instrumentation":Ljava/lang/instrument/Instrumentation;
    :catchall_0
    move-exception v0

    .line 89
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 90
    .restart local v3    # "instrumentation":Ljava/lang/instrument/Instrumentation;
    const/4 v1, 0x0

    .line 91
    .local v1, "dispatcher":Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;
    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 93
    .local v0, "dispatcher":Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;
    .local v1, "throwable":Ljava/lang/Throwable;
    :goto_0
    sput-object v3, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->INSTRUMENTATION:Ljava/lang/instrument/Instrumentation;

    .line 94
    sput-object v0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->DISPATCHER:Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;

    .line 95
    sput-object v1, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->INITIALIZATION_ERROR:Ljava/lang/Throwable;

    .line 96
    .end local v0    # "dispatcher":Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;
    .end local v1    # "throwable":Ljava/lang/Throwable;
    .end local v3    # "instrumentation":Ljava/lang/instrument/Instrumentation;
    return-void
.end method

.method constructor <init>()V
    .locals 10

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    sget-object v0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->INITIALIZATION_ERROR:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 120
    :try_start_0
    const-string v0, "java.lang.Module"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 121
    .local v0, "module":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 122
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->publicLookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    const-class v2, Ljava/lang/Class;

    const-string v3, "getModule"

    .line 123
    invoke-static {v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    iput-object v1, p0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->getModule:Ljava/lang/invoke/MethodHandle;

    .line 124
    nop

    .line 125
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->publicLookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    const-string v2, "isOpen"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    .line 129
    invoke-static {v3, v4}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3

    .line 126
    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    iput-object v1, p0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->isOpen:Ljava/lang/invoke/MethodHandle;

    .line 130
    nop

    .line 131
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->publicLookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    const-class v2, Ljava/lang/instrument/Instrumentation;

    const-string v3, "redefineModule"

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/util/Set;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/util/Map;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-class v6, Ljava/util/Map;

    const/4 v9, 0x2

    aput-object v6, v5, v9

    const-class v6, Ljava/util/Set;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    const-class v6, Ljava/util/Map;

    const/4 v9, 0x4

    aput-object v6, v5, v9

    .line 135
    invoke-static {v4, v0, v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 132
    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    iput-object v1, p0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->redefineModule:Ljava/lang/invoke/MethodHandle;

    .line 143
    nop

    .line 144
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->publicLookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    const-class v2, Ljava/lang/invoke/MethodHandles;

    const-string v3, "privateLookupIn"

    const-class v4, Ljava/lang/invoke/MethodHandles$Lookup;

    const-class v5, Ljava/lang/Class;

    new-array v6, v8, [Ljava/lang/Class;

    const-class v8, Ljava/lang/invoke/MethodHandles$Lookup;

    aput-object v8, v6, v7

    .line 148
    invoke-static {v4, v5, v6}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 145
    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    iput-object v1, p0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->privateLookupIn:Ljava/lang/invoke/MethodHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local v0    # "module":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 156
    return-void

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lorg/mockito/exceptions/base/MockitoInitializationException;

    const-string v2, "Could not resolve instrumentation invoker"

    invoke-direct {v1, v2, v0}, Lorg/mockito/exceptions/base/MockitoInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 112
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Lorg/mockito/exceptions/base/MockitoInitializationException;

    const-string v2, ""

    const-string v3, "This is unexpected on JVMs from Java 9 or later - possibly, the instrumentation API could not be resolved"

    const-string v4, "Could not initialize the Mockito instrumentation member accessor"

    filled-new-array {v4, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 113
    invoke-static {v2}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/mockito/exceptions/base/MockitoInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static assureArguments(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 7
    .param p0, "target"    # Ljava/lang/reflect/AccessibleObject;
    .param p1, "owner"    # Ljava/lang/Object;
    .param p3, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AccessibleObject;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 367
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p1, :cond_1

    .line 368
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot access "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_1
    :goto_0
    array-length v0, p4

    array-length v1, p3

    if-ne v0, v1, :cond_6

    .line 381
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_5

    .line 382
    aget-object v1, p3, v0

    const-string v2, " parameter of "

    const-string v3, " for "

    if-nez v1, :cond_3

    .line 383
    aget-object v1, p4, v0

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 384
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot assign null to primitive type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p4, v0

    .line 386
    invoke-virtual {v5}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_3
    sget-object v1, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->WRAPPERS:Ljava/util/Map;

    aget-object v4, p4, v0

    aget-object v5, p4, v0

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 394
    .local v1, "resolved":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v4, p3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 381
    .end local v1    # "resolved":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 395
    .restart local v1    # "resolved":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot assign value of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p3, v0

    .line 397
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 407
    .end local v0    # "index":I
    .end local v1    # "resolved":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    return-void

    .line 373
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect number of arguments for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but recevied "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assureOpen(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8
    .param p1, "module"    # Ljava/lang/Object;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 348
    sget-object v0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->DISPATCHER:Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;

    iget-object v1, p0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->isOpen:Ljava/lang/invoke/MethodHandle;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;->invokeWithArguments(Ljava/lang/invoke/MethodHandle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    iget-object v1, p0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->redefineModule:Ljava/lang/invoke/MethodHandle;

    sget-object v2, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->INSTRUMENTATION:Ljava/lang/instrument/Instrumentation;

    .line 350
    invoke-virtual {v1, v2}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    .line 352
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 353
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 355
    invoke-interface {v0}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;->getModule()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 354
    invoke-static {p2, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    .line 356
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    .line 357
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    move-object v2, p1

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v2

    .line 349
    invoke-interface {v0, v1, v2}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;->invokeWithArguments(Ljava/lang/invoke/MethodHandle;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    :cond_0
    return-void
.end method

.method static synthetic lambda$newInstance$0(Ljava/lang/invoke/MethodHandle;[Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Object;
    .locals 2
    .param p0, "handle"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "arguments"    # [Ljava/lang/Object;
    .param p2, "thrown"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 191
    :try_start_0
    sget-object v0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->DISPATCHER:Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;

    invoke-interface {v0, p0, p1}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;->invokeWithArguments(Ljava/lang/invoke/MethodHandle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 192
    :catchall_0
    move-exception v0

    .line 193
    .local v0, "throwable":Ljava/lang/Throwable;
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 194
    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "target"    # Ljava/lang/Object;

    .line 259
    nop

    .line 261
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 262
    :goto_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Class;

    .line 259
    invoke-static {p1, v0, v1, v3, v4}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->assureArguments(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 266
    :try_start_0
    sget-object v0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->DISPATCHER:Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;

    iget-object v1, p0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->getModule:Ljava/lang/invoke/MethodHandle;

    .line 267
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;->invokeWithArguments(Ljava/lang/invoke/MethodHandle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 268
    .local v1, "module":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v1, v3}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->assureOpen(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iget-object v4, p0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->privateLookupIn:Ljava/lang/invoke/MethodHandle;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 274
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v2

    .line 275
    invoke-interface {v0}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;->getLookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 272
    invoke-interface {v0, v4, v5}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;->invokeWithArguments(Ljava/lang/invoke/MethodHandle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/invoke/MethodHandles$Lookup;

    .line 276
    invoke-virtual {v4, p1}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectGetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    .line 277
    .local v4, "handle":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 278
    invoke-virtual {v4, p2}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    move-object v4, v5

    .line 280
    :cond_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v4, v2}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;->invokeWithArguments(Ljava/lang/invoke/MethodHandle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 281
    .end local v1    # "module":Ljava/lang/Object;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "handle":Ljava/lang/invoke/MethodHandle;
    :catchall_0
    move-exception v0

    .line 282
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public varargs invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 217
    nop

    .line 219
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 220
    :goto_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 222
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 217
    invoke-static {p1, v0, v1, p3, v2}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->assureArguments(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 224
    :try_start_0
    sget-object v0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->DISPATCHER:Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;

    iget-object v1, p0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->getModule:Ljava/lang/invoke/MethodHandle;

    .line 225
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;->invokeWithArguments(Ljava/lang/invoke/MethodHandle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 226
    .local v1, "module":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v1, v3}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->assureOpen(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iget-object v4, p0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->privateLookupIn:Ljava/lang/invoke/MethodHandle;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 232
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v2

    .line 233
    invoke-interface {v0}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;->getLookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v5, v6

    .line 230
    invoke-interface {v0, v4, v5}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;->invokeWithArguments(Ljava/lang/invoke/MethodHandle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/invoke/MethodHandles$Lookup;

    .line 234
    invoke-virtual {v2, p1}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    .line 235
    .local v2, "handle":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 236
    invoke-virtual {v2, p2}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v4

    .line 239
    :cond_1
    :try_start_1
    invoke-interface {v0, v2, p3}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;->invokeWithArguments(Ljava/lang/invoke/MethodHandle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 240
    :catchall_0
    move-exception v0

    .line 241
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    new-instance v4, Ljava/lang/reflect/InvocationTargetException;

    invoke-direct {v4, v0}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    .end local p1    # "method":Ljava/lang/reflect/Method;
    .end local p2    # "target":Ljava/lang/Object;
    .end local p3    # "arguments":[Ljava/lang/Object;
    throw v4
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 245
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v1    # "module":Ljava/lang/Object;
    .end local v2    # "handle":Ljava/lang/invoke/MethodHandle;
    .end local v3    # "packageName":Ljava/lang/String;
    .restart local p1    # "method":Ljava/lang/reflect/Method;
    .restart local p2    # "target":Ljava/lang/Object;
    .restart local p3    # "arguments":[Ljava/lang/Object;
    :catchall_1
    move-exception v0

    .line 246
    .restart local v0    # "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not invoke "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with arguments "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 252
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 243
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    throw v0
.end method

.method public varargs newInstance(Ljava/lang/reflect/Constructor;Lorg/mockito/plugins/MemberAccessor$OnConstruction;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p2, "onConstruction"    # Lorg/mockito/plugins/MemberAccessor$OnConstruction;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Lorg/mockito/plugins/MemberAccessor$OnConstruction;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 168
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v1, p3, v0}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->assureArguments(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 174
    :try_start_0
    sget-object v0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->DISPATCHER:Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;

    iget-object v1, p0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->getModule:Ljava/lang/invoke/MethodHandle;

    .line 176
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 175
    invoke-interface {v0, v1, v3}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;->invokeWithArguments(Ljava/lang/invoke/MethodHandle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 177
    .local v1, "module":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v1, v3}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->assureOpen(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v4, p0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->privateLookupIn:Ljava/lang/invoke/MethodHandle;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 183
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v2

    .line 184
    invoke-interface {v0}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;->getLookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v5, v6

    .line 181
    invoke-interface {v0, v4, v5}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;->invokeWithArguments(Ljava/lang/invoke/MethodHandle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandles$Lookup;

    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectConstructor(Ljava/lang/reflect/Constructor;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 186
    .local v0, "handle":Ljava/lang/invoke/MethodHandle;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 187
    .local v2, "thrown":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v4, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, p3, v2}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/invoke/MethodHandle;[Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 188
    invoke-interface {p2, v4}, Lorg/mockito/plugins/MemberAccessor$OnConstruction;->invoke(Lorg/mockito/plugins/MemberAccessor$ConstructionDispatcher;)Ljava/lang/Object;

    move-result-object v4

    .line 197
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_0

    .line 200
    return-object v4

    .line 198
    :cond_0
    new-instance v5, Ljava/lang/reflect/InvocationTargetException;

    move-object v6, v4

    check-cast v6, Ljava/lang/Throwable;

    invoke-direct {v5, v6}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    .end local p1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local p2    # "onConstruction":Lorg/mockito/plugins/MemberAccessor$OnConstruction;
    .end local p3    # "arguments":[Ljava/lang/Object;
    throw v5
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    .end local v0    # "handle":Ljava/lang/invoke/MethodHandle;
    .end local v1    # "module":Ljava/lang/Object;
    .end local v2    # "thrown":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    .restart local p1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local p2    # "onConstruction":Lorg/mockito/plugins/MemberAccessor$OnConstruction;
    .restart local p3    # "arguments":[Ljava/lang/Object;
    :catchall_0
    move-exception v0

    .line 205
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not construct "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with arguments "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 209
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 202
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    throw v0

    .line 169
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    new-instance v0, Ljava/lang/InstantiationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot instantiate abstract "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 170
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 161
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-instance v0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->newInstance(Ljava/lang/reflect/Constructor;Lorg/mockito/plugins/MemberAccessor$OnConstruction;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 288
    nop

    .line 290
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 291
    :goto_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 293
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 288
    invoke-static {p1, v0, v1, v2, v4}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->assureArguments(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 294
    const/4 v0, 0x0

    .line 296
    .local v0, "illegalAccess":Z
    :try_start_0
    sget-object v1, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->DISPATCHER:Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;

    iget-object v2, p0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->getModule:Ljava/lang/invoke/MethodHandle;

    .line 297
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;->invokeWithArguments(Ljava/lang/invoke/MethodHandle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 298
    .local v2, "module":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    .line 299
    .local v4, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v4}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->assureOpen(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v5, :cond_1

    .line 304
    const/4 v5, 0x1

    .line 306
    .local v5, "isFinal":Z
    :try_start_1
    invoke-interface {v1, p1, v3}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;->setAccessible(Ljava/lang/reflect/AccessibleObject;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    goto :goto_1

    .line 307
    :catchall_0
    move-exception v1

    .line 308
    .local v1, "ignored":Ljava/lang/Throwable;
    const/4 v0, 0x1

    .line 310
    :try_start_2
    new-instance v3, Ljava/lang/IllegalAccessException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not make final field "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " accessible"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .end local v0    # "illegalAccess":Z
    .end local p1    # "field":Ljava/lang/reflect/Field;
    .end local p2    # "target":Ljava/lang/Object;
    .end local p3    # "value":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 314
    .end local v1    # "ignored":Ljava/lang/Throwable;
    .end local v5    # "isFinal":Z
    .restart local v0    # "illegalAccess":Z
    .restart local p1    # "field":Ljava/lang/reflect/Field;
    .restart local p2    # "target":Ljava/lang/Object;
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_1
    const/4 v5, 0x0

    .line 317
    .restart local v5    # "isFinal":Z
    :goto_1
    :try_start_3
    iget-object v7, p0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->privateLookupIn:Ljava/lang/invoke/MethodHandle;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 321
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v8, v6

    .line 322
    invoke-interface {v1}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;->getLookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v9

    aput-object v9, v8, v3

    .line 319
    invoke-interface {v1, v7, v8}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;->invokeWithArguments(Ljava/lang/invoke/MethodHandle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/invoke/MethodHandles$Lookup;

    .line 323
    invoke-virtual {v3, p1}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectSetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    move-result-object v3

    .line 324
    .local v3, "handle":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 325
    invoke-virtual {v3, p2}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v7

    move-object v3, v7

    .line 327
    :cond_2
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v3, v7}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;->invokeWithArguments(Ljava/lang/invoke/MethodHandle;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 329
    .end local v3    # "handle":Ljava/lang/invoke/MethodHandle;
    if-eqz v5, :cond_3

    .line 330
    :try_start_4
    invoke-interface {v1, p1, v6}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;->setAccessible(Ljava/lang/reflect/AccessibleObject;Z)V

    .line 339
    .end local v2    # "module":Ljava/lang/Object;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "isFinal":Z
    :cond_3
    nop

    .line 340
    return-void

    .line 329
    .restart local v2    # "module":Ljava/lang/Object;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "isFinal":Z
    :catchall_1
    move-exception v1

    if-eqz v5, :cond_4

    .line 330
    sget-object v3, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->DISPATCHER:Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;

    invoke-interface {v3, p1, v6}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$Dispatcher;->setAccessible(Ljava/lang/reflect/AccessibleObject;Z)V

    :cond_4
    nop

    .end local v0    # "illegalAccess":Z
    .end local p1    # "field":Ljava/lang/reflect/Field;
    .end local p2    # "target":Ljava/lang/Object;
    .end local p3    # "value":Ljava/lang/Object;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 333
    .end local v2    # "module":Ljava/lang/Object;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "isFinal":Z
    .restart local v0    # "illegalAccess":Z
    .restart local p1    # "field":Ljava/lang/reflect/Field;
    .restart local p2    # "target":Ljava/lang/Object;
    .restart local p3    # "value":Ljava/lang/Object;
    :catchall_2
    move-exception v1

    .line 334
    .local v1, "t":Ljava/lang/Throwable;
    if-eqz v0, :cond_5

    .line 335
    move-object v2, v1

    check-cast v2, Ljava/lang/IllegalAccessException;

    throw v2

    .line 337
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
