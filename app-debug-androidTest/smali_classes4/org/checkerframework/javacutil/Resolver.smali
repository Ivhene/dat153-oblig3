.class public Lorg/checkerframework/javacutil/Resolver;
.super Ljava/lang/Object;
.source "Resolver.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ACCESSERROR:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final ACCESSERROR_ACCESS:Ljava/lang/reflect/Method;

.field private static final FIND_IDENT:Ljava/lang/reflect/Method;

.field private static final FIND_IDENT_IN_PACKAGE:Ljava/lang/reflect/Method;

.field private static final FIND_IDENT_IN_TYPE:Ljava/lang/reflect/Method;

.field private static final FIND_METHOD:Ljava/lang/reflect/Method;

.field private static final FIND_TYPE:Ljava/lang/reflect/Method;

.field private static final FIND_VAR:Ljava/lang/reflect/Method;


# instance fields
.field private final log:Lcom/sun/tools/javac/util/Log;

.field private final names:Lcom/sun/tools/javac/util/Names;

.field private final resolve:Lcom/sun/tools/javac/comp/Resolve;

.field private final trees:Lcom/sun/source/util/Trees;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 41
    nop

    .line 60
    :try_start_0
    const-class v0, Lcom/sun/tools/javac/comp/Resolve;

    const-string v1, "findMethod"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/sun/tools/javac/comp/Env;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lcom/sun/tools/javac/code/Type;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Lcom/sun/tools/javac/util/Name;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-class v3, Lcom/sun/tools/javac/util/List;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-class v3, Lcom/sun/tools/javac/util/List;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x5

    aput-object v3, v2, v9

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x6

    aput-object v3, v2, v9

    .line 61
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/javacutil/Resolver;->FIND_METHOD:Ljava/lang/reflect/Method;

    .line 70
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 72
    const-class v0, Lcom/sun/tools/javac/comp/Resolve;

    const-string v1, "findVar"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Lcom/sun/tools/javac/comp/Env;

    aput-object v3, v2, v4

    const-class v3, Lcom/sun/tools/javac/util/Name;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/javacutil/Resolver;->FIND_VAR:Ljava/lang/reflect/Method;

    .line 73
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 75
    const-class v0, Lcom/sun/tools/javac/comp/Resolve;

    const-string v1, "findIdent"

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Lcom/sun/tools/javac/comp/Env;

    aput-object v3, v2, v4

    const-class v3, Lcom/sun/tools/javac/util/Name;

    aput-object v3, v2, v5

    const-class v3, Lcom/sun/tools/javac/code/Kinds$KindSelector;

    aput-object v3, v2, v6

    .line 76
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/javacutil/Resolver;->FIND_IDENT:Ljava/lang/reflect/Method;

    .line 78
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 80
    const-class v0, Lcom/sun/tools/javac/comp/Resolve;

    const-string v1, "findIdentInType"

    new-array v2, v8, [Ljava/lang/Class;

    const-class v3, Lcom/sun/tools/javac/comp/Env;

    aput-object v3, v2, v4

    const-class v3, Lcom/sun/tools/javac/code/Type;

    aput-object v3, v2, v5

    const-class v3, Lcom/sun/tools/javac/util/Name;

    aput-object v3, v2, v6

    const-class v3, Lcom/sun/tools/javac/code/Kinds$KindSelector;

    aput-object v3, v2, v7

    .line 81
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/javacutil/Resolver;->FIND_IDENT_IN_TYPE:Ljava/lang/reflect/Method;

    .line 87
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 89
    const-class v0, Lcom/sun/tools/javac/comp/Resolve;

    const-string v1, "findIdentInPackage"

    new-array v2, v8, [Ljava/lang/Class;

    const-class v3, Lcom/sun/tools/javac/comp/Env;

    aput-object v3, v2, v4

    const-class v3, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    aput-object v3, v2, v5

    const-class v3, Lcom/sun/tools/javac/util/Name;

    aput-object v3, v2, v6

    const-class v3, Lcom/sun/tools/javac/code/Kinds$KindSelector;

    aput-object v3, v2, v7

    .line 90
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/javacutil/Resolver;->FIND_IDENT_IN_PACKAGE:Ljava/lang/reflect/Method;

    .line 96
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 98
    const-class v0, Lcom/sun/tools/javac/comp/Resolve;

    const-string v1, "findType"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Lcom/sun/tools/javac/comp/Env;

    aput-object v3, v2, v4

    const-class v3, Lcom/sun/tools/javac/util/Name;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/javacutil/Resolver;->FIND_TYPE:Ljava/lang/reflect/Method;

    .line 99
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 106
    nop

    .line 109
    :try_start_1
    const-string v0, "com.sun.tools.javac.comp.Resolve$AccessError"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/javacutil/Resolver;->ACCESSERROR:Ljava/lang/Class;

    .line 110
    const-string v1, "access"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Lcom/sun/tools/javac/util/Name;

    aput-object v3, v2, v4

    const-class v3, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/javacutil/Resolver;->ACCESSERROR_ACCESS:Ljava/lang/reflect/Method;

    .line 111
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    nop

    .line 119
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    const-string v2, "Compiler \'Resolve$AccessError\' class doesn\'t contain required \'access\' method"

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 112
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    const-string v2, "Compiler \'Resolve$AccessError\' class could not be retrieved."

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 100
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Compiler \'Resolve\' class doesn\'t contain required \'find\' method"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 104
    .local v1, "err":Ljava/lang/Error;
    invoke-virtual {v1, v0}, Ljava/lang/Error;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 105
    throw v1
.end method

.method public constructor <init>(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 2
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v0

    .line 123
    .local v0, "context":Lcom/sun/tools/javac/util/Context;
    invoke-static {v0}, Lcom/sun/tools/javac/comp/Resolve;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Resolve;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/javacutil/Resolver;->resolve:Lcom/sun/tools/javac/comp/Resolve;

    .line 124
    invoke-static {v0}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/javacutil/Resolver;->names:Lcom/sun/tools/javac/util/Names;

    .line 125
    invoke-static {p1}, Lcom/sun/source/util/Trees;->instance(Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/source/util/Trees;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/javacutil/Resolver;->trees:Lcom/sun/source/util/Trees;

    .line 126
    invoke-static {v0}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/javacutil/Resolver;->log:Lcom/sun/tools/javac/util/Log;

    .line 127
    return-void
.end method

.method private getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 390
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 391
    .local v0, "f":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 392
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 382
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 383
    .local v0, "f":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 384
    invoke-virtual {v0, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 385
    return-void
.end method

.method private varargs wrapInvocation(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/sun/tools/javac/code/Symbol;
    .locals 4
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 404
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .local v0, "res":Lcom/sun/tools/javac/code/Symbol;
    return-object v0

    .line 406
    .end local v0    # "res":Lcom/sun/tools/javac/code/Symbol;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    .line 410
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, p2, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 408
    const-string v3, "Unexpected Reflection error in wrapInvocation(%s, %s, %s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private varargs wrapInvocationOnResolveInstance(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/sun/tools/javac/code/Symbol;
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 397
    iget-object v0, p0, Lorg/checkerframework/javacutil/Resolver;->resolve:Lcom/sun/tools/javac/comp/Resolve;

    invoke-direct {p0, v0, p1, p2}, Lorg/checkerframework/javacutil/Resolver;->wrapInvocation(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected buildMethodContext()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 365
    nop

    .line 366
    const-string v0, "com.sun.tools.javac.comp.Resolve$MethodResolutionContext"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 367
    .local v0, "methCtxClss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 368
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 369
    iget-object v3, p0, Lorg/checkerframework/javacutil/Resolver;->resolve:Lcom/sun/tools/javac/comp/Resolve;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 371
    .local v3, "methodContext":Ljava/lang/Object;
    const-string v4, "attrMode"

    sget-object v5, Lcom/sun/tools/javac/comp/DeferredAttr$AttrMode;->CHECK:Lcom/sun/tools/javac/comp/DeferredAttr$AttrMode;

    invoke-direct {p0, v3, v4, v5}, Lorg/checkerframework/javacutil/Resolver;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 373
    iget-object v4, p0, Lorg/checkerframework/javacutil/Resolver;->resolve:Lcom/sun/tools/javac/comp/Resolve;

    const-string v5, "methodResolutionSteps"

    invoke-direct {p0, v4, v5}, Lorg/checkerframework/javacutil/Resolver;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/tools/javac/util/List;

    .line 374
    .local v4, "phases":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<*>;"
    if-eqz v4, :cond_0

    .line 375
    const-string v5, "step"

    invoke-virtual {v4, v2}, Lcom/sun/tools/javac/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v3, v5, v2}, Lorg/checkerframework/javacutil/Resolver;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 376
    return-object v3

    .line 374
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    const-string v5, "@AssumeAssertion(nullness): assumption"

    invoke-direct {v2, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public findClass(Ljava/lang/String;Lcom/sun/source/util/TreePath;)Ljavax/lang/model/element/Element;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Lcom/sun/source/util/TreePath;

    .line 257
    new-instance v0, Lcom/sun/tools/javac/util/Log$DiscardDiagnosticHandler;

    iget-object v1, p0, Lorg/checkerframework/javacutil/Resolver;->log:Lcom/sun/tools/javac/util/Log;

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/util/Log$DiscardDiagnosticHandler;-><init>(Lcom/sun/tools/javac/util/Log;)V

    .line 259
    .local v0, "discardDiagnosticHandler":Lcom/sun/tools/javac/util/Log$DiagnosticHandler;
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/checkerframework/javacutil/Resolver;->getEnvForPath(Lcom/sun/source/util/TreePath;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v1

    .line 260
    .local v1, "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    sget-object v2, Lorg/checkerframework/javacutil/Resolver;->FIND_TYPE:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    iget-object v4, p0, Lorg/checkerframework/javacutil/Resolver;->names:Lcom/sun/tools/javac/util/Names;

    invoke-virtual {v4, p1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-direct {p0, v2, v3}, Lorg/checkerframework/javacutil/Resolver;->wrapInvocationOnResolveInstance(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    iget-object v3, p0, Lorg/checkerframework/javacutil/Resolver;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/Log;->popDiagnosticHandler(Lcom/sun/tools/javac/util/Log$DiagnosticHandler;)V

    .line 260
    return-object v2

    .line 262
    .end local v1    # "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/checkerframework/javacutil/Resolver;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/Log;->popDiagnosticHandler(Lcom/sun/tools/javac/util/Log$DiagnosticHandler;)V

    throw v1
.end method

.method public findClassInPackage(Ljava/lang/String;Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Lcom/sun/source/util/TreePath;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pck"    # Lcom/sun/tools/javac/code/Symbol$PackageSymbol;
    .param p3, "path"    # Lcom/sun/source/util/TreePath;

    .line 275
    new-instance v0, Lcom/sun/tools/javac/util/Log$DiscardDiagnosticHandler;

    iget-object v1, p0, Lorg/checkerframework/javacutil/Resolver;->log:Lcom/sun/tools/javac/util/Log;

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/util/Log$DiscardDiagnosticHandler;-><init>(Lcom/sun/tools/javac/util/Log;)V

    .line 277
    .local v0, "discardDiagnosticHandler":Lcom/sun/tools/javac/util/Log$DiagnosticHandler;
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/checkerframework/javacutil/Resolver;->getEnvForPath(Lcom/sun/source/util/TreePath;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v1

    .line 278
    .local v1, "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    sget-object v2, Lorg/checkerframework/javacutil/Resolver;->FIND_IDENT_IN_PACKAGE:Ljava/lang/reflect/Method;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    iget-object v4, p0, Lorg/checkerframework/javacutil/Resolver;->names:Lcom/sun/tools/javac/util/Names;

    .line 283
    invoke-virtual {v4, p1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    sget-object v4, Lcom/sun/tools/javac/code/Kinds$KindSelector;->TYP:Lcom/sun/tools/javac/code/Kinds$KindSelector;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 279
    invoke-direct {p0, v2, v3}, Lorg/checkerframework/javacutil/Resolver;->wrapInvocationOnResolveInstance(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    .line 285
    .local v2, "res":Ljavax/lang/model/element/Element;
    invoke-static {v2}, Lorg/checkerframework/javacutil/ElementUtils;->isClassElement(Ljavax/lang/model/element/Element;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    move-object v3, v2

    check-cast v3, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    iget-object v4, p0, Lorg/checkerframework/javacutil/Resolver;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/util/Log;->popDiagnosticHandler(Lcom/sun/tools/javac/util/Log$DiagnosticHandler;)V

    .line 286
    return-object v3

    .line 288
    :cond_0
    nop

    .line 291
    iget-object v3, p0, Lorg/checkerframework/javacutil/Resolver;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/Log;->popDiagnosticHandler(Lcom/sun/tools/javac/util/Log$DiagnosticHandler;)V

    .line 288
    const/4 v3, 0x0

    return-object v3

    .line 291
    .end local v1    # "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    .end local v2    # "res":Ljavax/lang/model/element/Element;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/checkerframework/javacutil/Resolver;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/Log;->popDiagnosticHandler(Lcom/sun/tools/javac/util/Log$DiagnosticHandler;)V

    throw v1
.end method

.method public findField(Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;Lcom/sun/source/util/TreePath;)Ljavax/lang/model/element/VariableElement;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljavax/lang/model/type/TypeMirror;
    .param p3, "path"    # Lcom/sun/source/util/TreePath;

    .line 195
    new-instance v0, Lcom/sun/tools/javac/util/Log$DiscardDiagnosticHandler;

    iget-object v1, p0, Lorg/checkerframework/javacutil/Resolver;->log:Lcom/sun/tools/javac/util/Log;

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/util/Log$DiscardDiagnosticHandler;-><init>(Lcom/sun/tools/javac/util/Log;)V

    .line 197
    .local v0, "discardDiagnosticHandler":Lcom/sun/tools/javac/util/Log$DiagnosticHandler;
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/checkerframework/javacutil/Resolver;->getEnvForPath(Lcom/sun/source/util/TreePath;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v1

    .line 198
    .local v1, "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    sget-object v2, Lorg/checkerframework/javacutil/Resolver;->FIND_IDENT_IN_TYPE:Ljava/lang/reflect/Method;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    iget-object v4, p0, Lorg/checkerframework/javacutil/Resolver;->names:Lcom/sun/tools/javac/util/Names;

    .line 203
    invoke-virtual {v4, p1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    sget-object v4, Lcom/sun/tools/javac/code/Kinds$KindSelector;->VAR:Lcom/sun/tools/javac/code/Kinds$KindSelector;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 199
    invoke-direct {p0, v2, v3}, Lorg/checkerframework/javacutil/Resolver;->wrapInvocationOnResolveInstance(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    .line 206
    .local v2, "res":Ljavax/lang/model/element/Element;
    invoke-interface {v2}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/ElementKind;->FIELD:Ljavax/lang/model/element/ElementKind;

    if-ne v3, v4, :cond_0

    .line 207
    move-object v3, v2

    check-cast v3, Ljavax/lang/model/element/VariableElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    iget-object v4, p0, Lorg/checkerframework/javacutil/Resolver;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/util/Log;->popDiagnosticHandler(Lcom/sun/tools/javac/util/Log$DiagnosticHandler;)V

    .line 207
    return-object v3

    .line 208
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/ElementKind;->OTHER:Ljavax/lang/model/element/ElementKind;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    sget-object v3, Lorg/checkerframework/javacutil/Resolver;->ACCESSERROR:Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 210
    sget-object v3, Lorg/checkerframework/javacutil/Resolver;->ACCESSERROR_ACCESS:Ljava/lang/reflect/Method;

    filled-new-array {v5, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lorg/checkerframework/javacutil/Resolver;->wrapInvocation(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/VariableElement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    iget-object v4, p0, Lorg/checkerframework/javacutil/Resolver;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/util/Log;->popDiagnosticHandler(Lcom/sun/tools/javac/util/Log$DiagnosticHandler;)V

    .line 210
    return-object v3

    .line 213
    :cond_1
    nop

    .line 216
    iget-object v3, p0, Lorg/checkerframework/javacutil/Resolver;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/Log;->popDiagnosticHandler(Lcom/sun/tools/javac/util/Log$DiagnosticHandler;)V

    .line 213
    return-object v5

    .line 216
    .end local v1    # "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    .end local v2    # "res":Ljavax/lang/model/element/Element;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/checkerframework/javacutil/Resolver;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/Log;->popDiagnosticHandler(Lcom/sun/tools/javac/util/Log$DiagnosticHandler;)V

    throw v1
.end method

.method public findLocalVariableOrParameterOrField(Ljava/lang/String;Lcom/sun/source/util/TreePath;)Ljavax/lang/model/element/VariableElement;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Lcom/sun/source/util/TreePath;

    .line 229
    new-instance v0, Lcom/sun/tools/javac/util/Log$DiscardDiagnosticHandler;

    iget-object v1, p0, Lorg/checkerframework/javacutil/Resolver;->log:Lcom/sun/tools/javac/util/Log;

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/util/Log$DiscardDiagnosticHandler;-><init>(Lcom/sun/tools/javac/util/Log;)V

    .line 231
    .local v0, "discardDiagnosticHandler":Lcom/sun/tools/javac/util/Log$DiagnosticHandler;
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/checkerframework/javacutil/Resolver;->getEnvForPath(Lcom/sun/source/util/TreePath;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v1

    .line 232
    .local v1, "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    sget-object v2, Lorg/checkerframework/javacutil/Resolver;->FIND_VAR:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    iget-object v4, p0, Lorg/checkerframework/javacutil/Resolver;->names:Lcom/sun/tools/javac/util/Names;

    invoke-virtual {v4, p1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-direct {p0, v2, v3}, Lorg/checkerframework/javacutil/Resolver;->wrapInvocationOnResolveInstance(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    .line 233
    .local v2, "res":Ljavax/lang/model/element/Element;
    invoke-interface {v2}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/ElementKind;->LOCAL_VARIABLE:Ljavax/lang/model/element/ElementKind;

    if-eq v3, v4, :cond_1

    .line 234
    invoke-interface {v2}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/ElementKind;->PARAMETER:Ljavax/lang/model/element/ElementKind;

    if-eq v3, v4, :cond_1

    .line 235
    invoke-interface {v2}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/ElementKind;->FIELD:Ljavax/lang/model/element/ElementKind;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    nop

    .line 242
    iget-object v3, p0, Lorg/checkerframework/javacutil/Resolver;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/Log;->popDiagnosticHandler(Lcom/sun/tools/javac/util/Log$DiagnosticHandler;)V

    .line 239
    const/4 v3, 0x0

    return-object v3

    .line 236
    :cond_1
    :goto_0
    :try_start_1
    move-object v3, v2

    check-cast v3, Ljavax/lang/model/element/VariableElement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    iget-object v4, p0, Lorg/checkerframework/javacutil/Resolver;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/util/Log;->popDiagnosticHandler(Lcom/sun/tools/javac/util/Log$DiagnosticHandler;)V

    .line 236
    return-object v3

    .line 242
    .end local v1    # "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    .end local v2    # "res":Ljavax/lang/model/element/Element;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/checkerframework/javacutil/Resolver;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/Log;->popDiagnosticHandler(Lcom/sun/tools/javac/util/Log$DiagnosticHandler;)V

    throw v1
.end method

.method public findMethod(Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;Lcom/sun/source/util/TreePath;Ljava/util/List;)Ljavax/lang/model/element/Element;
    .locals 18
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "receiverType"    # Ljavax/lang/model/type/TypeMirror;
    .param p3, "path"    # Lcom/sun/source/util/TreePath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/lang/model/type/TypeMirror;",
            "Lcom/sun/source/util/TreePath;",
            "Ljava/util/List<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;)",
            "Ljavax/lang/model/element/Element;"
        }
    .end annotation

    .line 311
    .local p4, "argumentTypes":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/type/TypeMirror;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "currentResolutionContext"

    new-instance v4, Lcom/sun/tools/javac/util/Log$DiscardDiagnosticHandler;

    iget-object v5, v1, Lorg/checkerframework/javacutil/Resolver;->log:Lcom/sun/tools/javac/util/Log;

    invoke-direct {v4, v5}, Lcom/sun/tools/javac/util/Log$DiscardDiagnosticHandler;-><init>(Lcom/sun/tools/javac/util/Log;)V

    .line 313
    .local v4, "discardDiagnosticHandler":Lcom/sun/tools/javac/util/Log$DiagnosticHandler;
    move-object/from16 v5, p3

    :try_start_0
    invoke-virtual {v1, v5}, Lorg/checkerframework/javacutil/Resolver;->getEnvForPath(Lcom/sun/source/util/TreePath;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v6

    .line 315
    .local v6, "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    move-object v7, v3

    check-cast v7, Lcom/sun/tools/javac/code/Type;

    .line 316
    .local v7, "site":Lcom/sun/tools/javac/code/Type;
    iget-object v8, v1, Lorg/checkerframework/javacutil/Resolver;->names:Lcom/sun/tools/javac/util/Names;

    invoke-virtual {v8, v2}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v8

    .line 317
    .local v8, "name":Lcom/sun/tools/javac/util/Name;
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v9

    .line 318
    .local v9, "argtypes":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Type;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavax/lang/model/type/TypeMirror;

    .line 319
    .local v11, "a":Ljavax/lang/model/type/TypeMirror;
    move-object v12, v11

    check-cast v12, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v9, v12}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v12

    move-object v9, v12

    .line 320
    .end local v11    # "a":Ljavax/lang/model/type/TypeMirror;
    goto :goto_0

    .line 321
    :cond_0
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 322
    .local v10, "typeargtypes":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Type;>;"
    const/4 v11, 0x1

    .line 323
    .local v11, "allowBoxing":Z
    const/4 v12, 0x0

    .line 328
    .local v12, "useVarargs":Z
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/javacutil/Resolver;->buildMethodContext()Ljava/lang/Object;

    move-result-object v13

    .line 329
    .local v13, "methodContext":Ljava/lang/Object;
    iget-object v14, v1, Lorg/checkerframework/javacutil/Resolver;->resolve:Lcom/sun/tools/javac/comp/Resolve;

    invoke-direct {v1, v14, v0}, Lorg/checkerframework/javacutil/Resolver;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 330
    .local v14, "oldContext":Ljava/lang/Object;
    iget-object v15, v1, Lorg/checkerframework/javacutil/Resolver;->resolve:Lcom/sun/tools/javac/comp/Resolve;

    invoke-direct {v1, v15, v0, v13}, Lorg/checkerframework/javacutil/Resolver;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    sget-object v15, Lorg/checkerframework/javacutil/Resolver;->FIND_METHOD:Ljava/lang/reflect/Method;

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v6, v5, v16

    const/16 v16, 0x1

    aput-object v7, v5, v16

    const/16 v16, 0x2

    aput-object v8, v5, v16

    const/16 v16, 0x3

    aput-object v9, v5, v16

    const/16 v16, 0x4

    aput-object v10, v5, v16

    .line 339
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const/16 v17, 0x5

    aput-object v16, v5, v17

    .line 340
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const/16 v17, 0x6

    aput-object v16, v5, v17

    .line 332
    invoke-direct {v1, v15, v5}, Lorg/checkerframework/javacutil/Resolver;->wrapInvocationOnResolveInstance(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v5

    .line 341
    .local v5, "result":Ljavax/lang/model/element/Element;
    iget-object v15, v1, Lorg/checkerframework/javacutil/Resolver;->resolve:Lcom/sun/tools/javac/comp/Resolve;

    invoke-direct {v1, v15, v0, v14}, Lorg/checkerframework/javacutil/Resolver;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    nop

    .line 356
    iget-object v0, v1, Lorg/checkerframework/javacutil/Resolver;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/Log;->popDiagnosticHandler(Lcom/sun/tools/javac/util/Log$DiagnosticHandler;)V

    .line 342
    return-object v5

    .line 343
    .end local v5    # "result":Ljavax/lang/model/element/Element;
    .end local v13    # "methodContext":Ljava/lang/Object;
    .end local v14    # "oldContext":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    .line 344
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    new-instance v5, Ljava/lang/AssertionError;

    const-string v13, "Unexpected Reflection error in findMethod(%s, %s, ..., %s)"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v14, p4

    :try_start_3
    filled-new-array {v2, v3, v14}, [Ljava/lang/Object;

    move-result-object v15

    .line 346
    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 352
    .local v5, "err":Ljava/lang/Error;
    invoke-virtual {v5, v0}, Ljava/lang/Error;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 353
    nop

    .end local v4    # "discardDiagnosticHandler":Lcom/sun/tools/javac/util/Log$DiagnosticHandler;
    .end local p1    # "methodName":Ljava/lang/String;
    .end local p2    # "receiverType":Ljavax/lang/model/type/TypeMirror;
    .end local p3    # "path":Lcom/sun/source/util/TreePath;
    .end local p4    # "argumentTypes":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/type/TypeMirror;>;"
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 356
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v5    # "err":Ljava/lang/Error;
    .end local v6    # "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    .end local v7    # "site":Lcom/sun/tools/javac/code/Type;
    .end local v8    # "name":Lcom/sun/tools/javac/util/Name;
    .end local v9    # "argtypes":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Type;>;"
    .end local v10    # "typeargtypes":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Type;>;"
    .end local v11    # "allowBoxing":Z
    .end local v12    # "useVarargs":Z
    .restart local v4    # "discardDiagnosticHandler":Lcom/sun/tools/javac/util/Log$DiagnosticHandler;
    .restart local p1    # "methodName":Ljava/lang/String;
    .restart local p2    # "receiverType":Ljavax/lang/model/type/TypeMirror;
    .restart local p3    # "path":Lcom/sun/source/util/TreePath;
    .restart local p4    # "argumentTypes":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/type/TypeMirror;>;"
    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v14, p4

    :goto_1
    iget-object v5, v1, Lorg/checkerframework/javacutil/Resolver;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v5, v4}, Lcom/sun/tools/javac/util/Log;->popDiagnosticHandler(Lcom/sun/tools/javac/util/Log$DiagnosticHandler;)V

    throw v0
.end method

.method public findPackage(Ljava/lang/String;Lcom/sun/source/util/TreePath;)Lcom/sun/tools/javac/code/Symbol$PackageSymbol;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Lcom/sun/source/util/TreePath;

    .line 163
    new-instance v0, Lcom/sun/tools/javac/util/Log$DiscardDiagnosticHandler;

    iget-object v1, p0, Lorg/checkerframework/javacutil/Resolver;->log:Lcom/sun/tools/javac/util/Log;

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/util/Log$DiscardDiagnosticHandler;-><init>(Lcom/sun/tools/javac/util/Log;)V

    .line 165
    .local v0, "discardDiagnosticHandler":Lcom/sun/tools/javac/util/Log$DiagnosticHandler;
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/checkerframework/javacutil/Resolver;->getEnvForPath(Lcom/sun/source/util/TreePath;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v1

    .line 166
    .local v1, "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    sget-object v2, Lorg/checkerframework/javacutil/Resolver;->FIND_IDENT:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    iget-object v4, p0, Lorg/checkerframework/javacutil/Resolver;->names:Lcom/sun/tools/javac/util/Names;

    .line 168
    invoke-virtual {v4, p1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Lcom/sun/tools/javac/code/Kinds$KindSelector;->PCK:Lcom/sun/tools/javac/code/Kinds$KindSelector;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 167
    invoke-direct {p0, v2, v3}, Lorg/checkerframework/javacutil/Resolver;->wrapInvocationOnResolveInstance(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    .line 172
    .local v2, "res":Ljavax/lang/model/element/Element;
    invoke-interface {v2}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    .line 173
    move-object v3, v2

    check-cast v3, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 174
    .local v3, "ps":Lcom/sun/tools/javac/code/Symbol$PackageSymbol;
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->exists()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    move-object v5, v3

    .line 179
    :cond_0
    iget-object v4, p0, Lorg/checkerframework/javacutil/Resolver;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/util/Log;->popDiagnosticHandler(Lcom/sun/tools/javac/util/Log$DiagnosticHandler;)V

    .line 174
    return-object v5

    .line 176
    .end local v3    # "ps":Lcom/sun/tools/javac/code/Symbol$PackageSymbol;
    :cond_1
    nop

    .line 179
    iget-object v3, p0, Lorg/checkerframework/javacutil/Resolver;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/Log;->popDiagnosticHandler(Lcom/sun/tools/javac/util/Log$DiagnosticHandler;)V

    .line 176
    return-object v5

    .line 179
    .end local v1    # "env":Lcom/sun/tools/javac/comp/Env;, "Lcom/sun/tools/javac/comp/Env<Lcom/sun/tools/javac/comp/AttrContext;>;"
    .end local v2    # "res":Ljavax/lang/model/element/Element;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/checkerframework/javacutil/Resolver;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/Log;->popDiagnosticHandler(Lcom/sun/tools/javac/util/Log$DiagnosticHandler;)V

    throw v1
.end method

.method public getEnvForPath(Lcom/sun/source/util/TreePath;)Lcom/sun/tools/javac/comp/Env;
    .locals 5
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/util/TreePath;",
            ")",
            "Lcom/sun/tools/javac/comp/Env<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    .line 136
    move-object v0, p1

    .line 137
    .local v0, "iter":Lcom/sun/source/util/TreePath;
    const/4 v1, 0x0

    .line 138
    .local v1, "scope":Lcom/sun/tools/javac/api/JavacScope;
    :goto_0
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 140
    :try_start_0
    iget-object v2, p0, Lorg/checkerframework/javacutil/Resolver;->trees:Lcom/sun/source/util/Trees;

    invoke-virtual {v2, v0}, Lcom/sun/source/util/Trees;->getScope(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/Scope;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/api/JavacScope;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    goto :goto_1

    .line 141
    :catchall_0
    move-exception v2

    .line 145
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 146
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 148
    :cond_0
    if-eqz v1, :cond_1

    .line 149
    invoke-virtual {v1}, Lcom/sun/tools/javac/api/JavacScope;->getEnv()Lcom/sun/tools/javac/comp/Env;

    move-result-object v2

    return-object v2

    .line 151
    :cond_1
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not determine any possible scope for path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2
.end method
