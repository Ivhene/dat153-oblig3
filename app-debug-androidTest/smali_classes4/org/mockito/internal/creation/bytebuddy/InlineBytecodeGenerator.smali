.class public Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;
.super Ljava/lang/Object;
.source "InlineBytecodeGenerator.java"

# interfaces
.implements Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;
.implements Ljava/lang/instrument/ClassFileTransformer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$ParameterWritingVisitorWrapper;
    }
.end annotation


# static fields
.field static final EXCLUDES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final PRELOAD:Ljava/lang/String; = "org.mockito.inline.preload"


# instance fields
.field private final byteBuddy:Lnet/bytebuddy/ByteBuddy;

.field private final canRead:Ljava/lang/reflect/Method;

.field private final flatMocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentSet<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final getModule:Ljava/lang/reflect/Method;

.field private final instrumentation:Ljava/lang/instrument/Instrumentation;

.field private volatile lastException:Ljava/lang/Throwable;

.field private final mockTransformer:Lnet/bytebuddy/asm/AsmVisitorWrapper;

.field private final mocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentSet<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final redefineModule:Ljava/lang/reflect/Method;

.field private final subclassEngine:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 55
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/Byte;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/lang/Short;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Ljava/lang/Character;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Ljava/lang/Long;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Ljava/lang/Float;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Ljava/lang/Double;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 57
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->EXCLUDES:Ljava/util/Set;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/instrument/Instrumentation;Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;Ljava/util/function/Predicate;Lorg/mockito/internal/creation/bytebuddy/ConstructionCallback;)V
    .locals 14
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .param p5, "onConstruction"    # Lorg/mockito/internal/creation/bytebuddy/ConstructionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<",
            "Ljava/lang/Object;",
            "Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;",
            ">;",
            "Lorg/mockito/internal/util/concurrent/DetachedThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;",
            ">;>;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Lorg/mockito/internal/creation/bytebuddy/ConstructionCallback;",
            ")V"
        }
    .end annotation

    .line 88
    .local p2, "mocks":Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;, "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<Ljava/lang/Object;Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;>;"
    .local p3, "mockedStatics":Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;, "Lorg/mockito/internal/util/concurrent/DetachedThreadLocal<Ljava/util/Map<Ljava/lang/Class<*>;Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;>;>;"
    .local p4, "isMockConstruction":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Class<*>;>;"
    move-object v1, p0

    move-object v2, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->preload()V

    .line 90
    iput-object v2, v1, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->instrumentation:Ljava/lang/instrument/Instrumentation;

    .line 91
    new-instance v0, Lnet/bytebuddy/ByteBuddy;

    invoke-direct {v0}, Lnet/bytebuddy/ByteBuddy;-><init>()V

    sget-object v3, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->DISABLED:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    .line 93
    invoke-virtual {v0, v3}, Lnet/bytebuddy/ByteBuddy;->with(Lnet/bytebuddy/dynamic/scaffold/TypeValidation;)Lnet/bytebuddy/ByteBuddy;

    move-result-object v0

    sget-object v3, Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;->INSTANCE:Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;

    .line 94
    invoke-virtual {v0, v3}, Lnet/bytebuddy/ByteBuddy;->with(Lnet/bytebuddy/implementation/Implementation$Context$Factory;)Lnet/bytebuddy/ByteBuddy;

    move-result-object v0

    sget-object v3, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;

    .line 95
    invoke-virtual {v0, v3}, Lnet/bytebuddy/ByteBuddy;->with(Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/ByteBuddy;

    move-result-object v0

    .line 96
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isSynthetic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-static {v4}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-interface {v3, v4}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isDefaultFinalizer()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-interface {v3, v4}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/bytebuddy/ByteBuddy;->ignore(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/ByteBuddy;

    move-result-object v0

    iput-object v0, v1, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    .line 97
    new-instance v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    sget-object v3, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;->INLINE:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;

    invoke-direct {v0, v3}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;-><init>(Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;)V

    iput-object v0, v1, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->mocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    .line 98
    new-instance v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    sget-object v3, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;->INLINE:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;

    invoke-direct {v0, v3}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;-><init>(Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;)V

    iput-object v0, v1, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->flatMocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    .line 99
    invoke-static {}, Lnet/bytebuddy/utility/RandomString;->make()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "identifier":Ljava/lang/String;
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;

    new-instance v4, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;

    .line 103
    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v5

    const/4 v10, 0x1

    new-array v6, v10, [Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;

    const-class v7, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$Identifier;

    .line 105
    invoke-static {v7, v3}, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue$OfConstant;->of(Ljava/lang/Class;Ljava/lang/Object;)Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 104
    invoke-virtual {v5, v6}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->withBinders([Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;)Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v5

    const-class v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ForReadObject;

    .line 106
    invoke-virtual {v5, v6}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object v5

    .line 107
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isAbstract()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isNative()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v7

    invoke-interface {v6, v7}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isToString()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v7

    invoke-interface {v6, v7}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;-><init>(Lnet/bytebuddy/implementation/Implementation;Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-direct {v0, v4, v8}, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;-><init>(Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;Z)V

    iput-object v0, v1, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->subclassEngine:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

    .line 109
    new-instance v0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    invoke-direct {v0}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;-><init>()V

    .line 112
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isVirtual()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    .line 115
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isBridge()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v5

    .line 116
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isHashCode()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-interface {v5, v6}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v5

    .line 117
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isEquals()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-interface {v5, v6}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v5

    .line 118
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isDefaultFinalizer()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-interface {v5, v6}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v5

    .line 114
    invoke-static {v5}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v5

    .line 113
    invoke-interface {v4, v5}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    .line 121
    const-string v5, "java."

    invoke-static {v5}, Lnet/bytebuddy/matcher/ElementMatchers;->nameStartsWith(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v5

    invoke-static {v5}, Lnet/bytebuddy/matcher/ElementMatchers;->isDeclaredBy(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v5

    .line 123
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isPackagePrivate()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    .line 122
    invoke-interface {v5, v6}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v5

    .line 120
    invoke-static {v5}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v5

    .line 119
    invoke-interface {v4, v5}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    new-array v5, v10, [Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;

    .line 124
    invoke-static {}, Lnet/bytebuddy/asm/Advice;->withCustomMapping()Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object v6

    const-class v7, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$Identifier;

    .line 125
    invoke-virtual {v6, v7, v3}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Ljava/lang/Class;Ljava/lang/Object;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object v6

    const-class v7, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;

    .line 126
    invoke-virtual {v6, v7}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->to(Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice;

    move-result-object v6

    aput-object v6, v5, v8

    .line 111
    invoke-virtual {v0, v4, v5}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->method(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    move-result-object v0

    .line 128
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isStatic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    new-array v5, v10, [Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;

    .line 129
    invoke-static {}, Lnet/bytebuddy/asm/Advice;->withCustomMapping()Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object v6

    const-class v7, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$Identifier;

    .line 130
    invoke-virtual {v6, v7, v3}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Ljava/lang/Class;Ljava/lang/Object;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object v6

    const-class v7, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ForStatic;

    .line 131
    invoke-virtual {v6, v7}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->to(Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice;

    move-result-object v6

    aput-object v6, v5, v8

    .line 127
    invoke-virtual {v0, v4, v5}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->method(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    move-result-object v0

    .line 132
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->any()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    new-array v5, v10, [Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;

    new-instance v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut;

    invoke-direct {v6, v3}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v8

    invoke-virtual {v0, v4, v5}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->constructor(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    move-result-object v0

    .line 134
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isHashCode()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    new-array v5, v10, [Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;

    .line 135
    invoke-static {}, Lnet/bytebuddy/asm/Advice;->withCustomMapping()Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object v6

    const-class v7, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$Identifier;

    .line 136
    invoke-virtual {v6, v7, v3}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Ljava/lang/Class;Ljava/lang/Object;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object v6

    const-class v7, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ForHashCode;

    .line 137
    invoke-virtual {v6, v7}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->to(Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice;

    move-result-object v6

    aput-object v6, v5, v8

    .line 133
    invoke-virtual {v0, v4, v5}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->method(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    move-result-object v0

    .line 139
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isEquals()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    new-array v5, v10, [Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;

    .line 140
    invoke-static {}, Lnet/bytebuddy/asm/Advice;->withCustomMapping()Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object v6

    const-class v7, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$Identifier;

    .line 141
    invoke-virtual {v6, v7, v3}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Ljava/lang/Class;Ljava/lang/Object;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object v6

    const-class v7, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ForEquals;

    .line 142
    invoke-virtual {v6, v7}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->to(Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice;

    move-result-object v6

    aput-object v6, v5, v8

    .line 138
    invoke-virtual {v0, v4, v5}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->method(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    move-result-object v0

    iput-object v0, v1, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->mockTransformer:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    .line 145
    :try_start_0
    const-class v0, Ljava/lang/Class;

    const-string v4, "getModule"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 146
    .local v0, "getModule":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "canRead"

    new-array v6, v10, [Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 147
    .local v4, "canRead":Ljava/lang/reflect/Method;
    const-class v5, Ljava/lang/instrument/Instrumentation;

    const-string v6, "redefineModule"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Class;

    .line 150
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v8

    const-class v8, Ljava/util/Set;

    aput-object v8, v7, v10

    const-class v8, Ljava/util/Map;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const-class v8, Ljava/util/Map;

    const/4 v9, 0x3

    aput-object v8, v7, v9

    const-class v8, Ljava/util/Set;

    const/4 v9, 0x4

    aput-object v8, v7, v9

    const-class v8, Ljava/util/Map;

    const/4 v9, 0x5

    aput-object v8, v7, v9

    .line 148
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .local v5, "redefineModule":Ljava/lang/reflect/Method;
    move-object v11, v4

    move-object v12, v5

    goto :goto_0

    .line 156
    .end local v0    # "getModule":Ljava/lang/reflect/Method;
    .end local v4    # "canRead":Ljava/lang/reflect/Method;
    .end local v5    # "redefineModule":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "ignored":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 158
    .local v4, "getModule":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    .line 159
    .local v5, "canRead":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    move-object v0, v4

    move-object v11, v5

    move-object v12, v6

    .line 161
    .end local v4    # "getModule":Ljava/lang/reflect/Method;
    .end local v5    # "canRead":Ljava/lang/reflect/Method;
    .local v0, "getModule":Ljava/lang/reflect/Method;
    .local v11, "canRead":Ljava/lang/reflect/Method;
    .local v12, "redefineModule":Ljava/lang/reflect/Method;
    :goto_0
    iput-object v0, v1, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->getModule:Ljava/lang/reflect/Method;

    .line 162
    iput-object v11, v1, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->canRead:Ljava/lang/reflect/Method;

    .line 163
    iput-object v12, v1, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->redefineModule:Ljava/lang/reflect/Method;

    .line 164
    new-instance v13, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;

    move-object v4, v13

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object v7, v3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v9}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;-><init>(Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;Ljava/lang/String;Ljava/util/function/Predicate;Lorg/mockito/internal/creation/bytebuddy/ConstructionCallback;)V

    invoke-static {v3, v13}, Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;->set(Ljava/lang/String;Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;)V

    .line 168
    invoke-interface {p1, p0, v10}, Ljava/lang/instrument/Instrumentation;->addTransformer(Ljava/lang/instrument/ClassFileTransformer;Z)V

    .line 169
    return-void
.end method

.method private addInterfaces(Ljava/util/Set;[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 354
    .local p1, "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .local p2, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 355
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->mocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    invoke-virtual {v3, v2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 356
    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->flatMocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    invoke-virtual {v3, v2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 357
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->addInterfaces(Ljava/util/Set;[Ljava/lang/Class;)V

    .line 354
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    :cond_2
    return-void
.end method

.method private assureCanReadMockito(Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 301
    .local p1, "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->redefineModule:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 302
    return-void

    .line 304
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 306
    .local v0, "modules":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :try_start_0
    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->getModule:Ljava/lang/reflect/Method;

    const-string v2, "org.mockito.internal.creation.bytebuddy.inject.MockMethodDispatcher"

    .line 308
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    .line 307
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 312
    .local v1, "target":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 313
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->getModule:Ljava/lang/reflect/Method;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 314
    .local v5, "module":Ljava/lang/Object;
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->canRead:Ljava/lang/reflect/Method;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    .line 315
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 317
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "module":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 318
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 319
    .local v4, "module":Ljava/lang/Object;
    iget-object v5, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->redefineModule:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->instrumentation:Ljava/lang/instrument/Instrumentation;

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v3

    .line 322
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 323
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    .line 324
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    .line 325
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    .line 326
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v7, v9

    .line 319
    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    nop

    .end local v4    # "module":Ljava/lang/Object;
    goto :goto_1

    .line 339
    .end local v1    # "target":Ljava/lang/Object;
    :cond_3
    nop

    .line 340
    return-void

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "At least one of those modules: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not reading the unnamed module of the bootstrap loader"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Without such a read edge, the classes that are redefined to become mocks cannot access the mock dispatcher."

    const-string v5, "To circumvent this, Mockito attempted to add a read edge to this module what failed for an unexpected reason"

    const-string v6, "Could not adjust module graph to make the mock instance dispatcher visible to some classes"

    const-string v7, ""

    filled-new-array {v6, v7, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 330
    invoke-static {v3}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static assureInitialization(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 231
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    .line 240
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/ExceptionInInitializerError;
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot instrument "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because it or one of its supertypes could not be initialized"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-virtual {v0}, Ljava/lang/ExceptionInInitializerError;->getException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private checkSupportedCombination(ZLorg/mockito/internal/creation/bytebuddy/MockFeatures;)V
    .locals 3
    .param p1, "subclassingRequired"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lorg/mockito/internal/creation/bytebuddy/MockFeatures<",
            "TT;>;)V"
        }
    .end annotation

    .line 344
    .local p2, "features":Lorg/mockito/internal/creation/bytebuddy/MockFeatures;, "Lorg/mockito/internal/creation/bytebuddy/MockFeatures<TT;>;"
    if-eqz p1, :cond_1

    iget-object v0, p2, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    .line 345
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    .line 346
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    .line 347
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 348
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported settings with this type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    .line 349
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_1
    :goto_0
    return-void
.end method

.method private static preload()V
    .locals 7

    .line 186
    const-string v0, "org.mockito.inline.preload"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "preloads":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 188
    const-string v0, "java.lang.WeakPairMap,java.lang.WeakPairMap$Pair,java.lang.WeakPairMap$Pair$Weak"

    .line 191
    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 193
    .local v5, "preload":Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    invoke-static {v5, v3, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    goto :goto_1

    .line 194
    :catch_0
    move-exception v6

    .line 191
    .end local v5    # "preload":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 197
    :cond_1
    return-void
.end method

.method private triggerRetransformation(Ljava/util/Set;Z)V
    .locals 7
    .param p2, "flat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;Z)V"
        }
    .end annotation

    .line 243
    .local p1, "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 246
    .local v0, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 247
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_0

    .line 248
    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->mocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    invoke-virtual {v3, v2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->flatMocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    invoke-virtual {v3, v2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 249
    invoke-static {v2}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->assureInitialization(Ljava/lang/Class;)V

    .line 250
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 254
    :cond_0
    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->mocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    invoke-virtual {v3, v2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    invoke-static {v2}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->assureInitialization(Ljava/lang/Class;)V

    .line 256
    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->flatMocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    invoke-virtual {v3, v2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 257
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->addInterfaces(Ljava/util/Set;[Ljava/lang/Class;)V

    .line 261
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v3

    .line 262
    if-nez v2, :cond_0

    .line 264
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_1
    goto :goto_0

    .line 271
    :cond_4
    nop

    .line 273
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 275
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->assureCanReadMockito(Ljava/util/Set;)V

    .line 276
    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Class;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    invoke-interface {v2, v3}, Ljava/lang/instrument/Instrumentation;->retransformClasses([Ljava/lang/Class;)V

    .line 277
    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->lastException:Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    .local v2, "throwable":Ljava/lang/Throwable;
    if-nez v2, :cond_5

    .line 295
    .end local v2    # "throwable":Ljava/lang/Throwable;
    iput-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->lastException:Ljava/lang/Throwable;

    .line 296
    goto :goto_4

    .line 279
    .restart local v2    # "throwable":Ljava/lang/Throwable;
    :cond_5
    :try_start_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Byte Buddy could not instrument all classes within the mock\'s type hierarchy"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, ""

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "This problem should never occur for javac-compiled classes. This problem has been observed for classes that are:"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const-string v5, " - Compiled by older versions of scalac"

    const/4 v6, 0x3

    aput-object v5, v4, v6

    const-string v5, " - Classes that are part of the Android distribution"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    .line 280
    invoke-static {v4}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "targets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .end local p1    # "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .end local p2    # "flat":Z
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    .end local v2    # "throwable":Ljava/lang/Throwable;
    .restart local v0    # "targets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .restart local p1    # "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .restart local p2    # "flat":Z
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 288
    :catch_0
    move-exception v2

    .line 289
    .local v2, "exception":Ljava/lang/Exception;
    :try_start_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 290
    .local v4, "failed":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->mocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    invoke-virtual {v5, v4}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->remove(Ljava/lang/Object;)Z

    .line 291
    iget-object v5, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->flatMocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    invoke-virtual {v5, v4}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->remove(Ljava/lang/Object;)Z

    .line 292
    nop

    .end local v4    # "failed":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_2

    .line 293
    :cond_6
    new-instance v3, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not modify all classes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "targets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .end local p1    # "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .end local p2    # "flat":Z
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 295
    .end local v2    # "exception":Ljava/lang/Exception;
    .restart local v0    # "targets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .restart local p1    # "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .restart local p2    # "flat":Z
    :goto_3
    iput-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->lastException:Ljava/lang/Throwable;

    throw v2

    .line 298
    :cond_7
    :goto_4
    return-void

    .line 265
    :catchall_1
    move-exception v1

    .line 266
    .local v1, "t":Ljava/lang/Throwable;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 267
    .local v3, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->mocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    invoke-virtual {v4, v3}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->remove(Ljava/lang/Object;)Z

    .line 268
    iget-object v4, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->flatMocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    invoke-virtual {v4, v3}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->remove(Ljava/lang/Object;)Z

    .line 269
    .end local v3    # "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_5

    .line 270
    :cond_8
    throw v1
.end method


# virtual methods
.method public declared-synchronized clearAllCaches()V
    .locals 6

    monitor-enter p0

    .line 402
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 403
    .local v0, "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->mocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-virtual {v1, v2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->forEach(Ljava/util/function/Consumer;)V

    .line 404
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 405
    monitor-exit p0

    return-void

    .line 407
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->mocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    invoke-virtual {v1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->clear()V

    .line 408
    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->flatMocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    invoke-virtual {v1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->instrumentation:Ljava/lang/instrument/Instrumentation;

    new-array v3, v1, [Ljava/lang/Class;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    invoke-interface {v2, v3}, Ljava/lang/instrument/Instrumentation;->retransformClasses([Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/instrument/UnmodifiableClassException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 419
    nop

    .line 420
    monitor-exit p0

    return-void

    .line 411
    .end local p0    # "this":Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;
    :catch_0
    move-exception v2

    .line 412
    .local v2, "e":Ljava/lang/instrument/UnmodifiableClassException;
    :try_start_3
    new-instance v3, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Failed to reset mocks."

    aput-object v5, v4, v1

    const-string v1, ""

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const-string v1, "This should not influence the working of Mockito."

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const-string v1, "But if the reset intends to remove mocking code to improve performance, it is still impacted."

    const/4 v5, 0x3

    aput-object v1, v4, v5

    .line 413
    invoke-static {v4}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 401
    .end local v0    # "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .end local v2    # "e":Ljava/lang/instrument/UnmodifiableClassException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public mockClass(Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/internal/creation/bytebuddy/MockFeatures<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation

    .line 201
    .local p1, "features":Lorg/mockito/internal/creation/bytebuddy/MockFeatures;, "Lorg/mockito/internal/creation/bytebuddy/MockFeatures<TT;>;"
    iget-object v0, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->interfaces:Ljava/util/Set;

    .line 202
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->serializableMode:Lorg/mockito/mock/SerializableMode;

    sget-object v2, Lorg/mockito/mock/SerializableMode;->NONE:Lorg/mockito/mock/SerializableMode;

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    .line 204
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 206
    .local v0, "subclassingRequired":Z
    :goto_1
    invoke-direct {p0, v0, p1}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->checkSupportedCombination(ZLorg/mockito/internal/creation/bytebuddy/MockFeatures;)V

    .line 208
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 209
    .local v2, "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    iget-object v3, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v3, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->interfaces:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    invoke-direct {p0, v2, v1}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->triggerRetransformation(Ljava/util/Set;Z)V

    .line 214
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->subclassEngine:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

    invoke-interface {v1, p1}, Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;->mockClass(Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    :cond_2
    iget-object v1, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    :goto_2
    return-object v1

    .line 214
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized mockClassConstruction(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 226
    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->triggerRetransformation(Ljava/util/Set;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    .line 225
    .end local p0    # "this":Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;
    .end local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized mockClassStatic(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 221
    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->triggerRetransformation(Ljava/util/Set;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    .line 220
    .end local p0    # "this":Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;
    .end local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B
    .locals 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p4, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .param p5, "classfileBuffer"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            "[B)[B"
        }
    .end annotation

    .line 371
    .local p3, "classBeingRedefined":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->mocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    .line 372
    invoke-virtual {v1, p3}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->flatMocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    .line 373
    invoke-virtual {v1, p3}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v1, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->EXCLUDES:Ljava/util/Set;

    .line 374
    invoke-interface {v1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 378
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    .line 383
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 382
    invoke-static {v2, p5}, Lnet/bytebuddy/dynamic/ClassFileLocator$Simple;->of(Ljava/lang/String;[B)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v2

    .line 379
    invoke-virtual {v1, p3, v2}, Lnet/bytebuddy/ByteBuddy;->redefine(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v1

    new-instance v2, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$ParameterWritingVisitorWrapper;

    invoke-direct {v2, p3, v0}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$ParameterWritingVisitorWrapper;-><init>(Ljava/lang/Class;Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$1;)V

    .line 389
    invoke-interface {v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->visit(Lnet/bytebuddy/asm/AsmVisitorWrapper;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->mockTransformer:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    .line 390
    invoke-interface {v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->visit(Lnet/bytebuddy/asm/AsmVisitorWrapper;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v1

    .line 391
    invoke-interface {v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object v1

    .line 392
    invoke-interface {v1}, Lnet/bytebuddy/dynamic/DynamicType$Unloaded;->getBytes()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    return-object v0

    .line 393
    :catchall_0
    move-exception v1

    .line 394
    .local v1, "throwable":Ljava/lang/Throwable;
    iput-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->lastException:Ljava/lang/Throwable;

    .line 395
    return-object v0

    .line 375
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-object v0
.end method
