.class public Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;
.super Ljava/lang/Object;
.source "JavaDispatcher.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader;,
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$ProxiedInvocationHandler;,
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;,
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker;,
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Defaults;,
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Container;,
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Instance;,
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$IsConstructor;,
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$IsStatic;,
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final GENERATE:Z

.field public static final GENERATE_PROPERTY:Ljava/lang/String; = "net.bytebuddy.generate"

.field private static final INVOKER:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker;


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;
    .annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
        value = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->REVERSE_NULLABILITY:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .end annotation
.end field

.field private final generate:Z

.field private final proxy:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    nop

    .line 59
    new-instance v0, Lnet/bytebuddy/utility/privilege/GetSystemPropertyAction;

    const-string v1, "net.bytebuddy.generate"

    invoke-direct {v0, v1}, Lnet/bytebuddy/utility/privilege/GetSystemPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->GENERATE:Z

    .line 65
    sget-object v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker$CreationAction;->INSTANCE:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker$CreationAction;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker;

    sput-object v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->INVOKER:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;Z)V
    .locals 0
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "generate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/ClassLoader;",
            "Z)V"
        }
    .end annotation

    .line 90
    .local p0, "this":Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;, "Lnet/bytebuddy/utility/dispatcher/JavaDispatcher<TT;>;"
    .local p1, "proxy":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    .line 92
    iput-object p2, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->classLoader:Ljava/lang/ClassLoader;

    .line 93
    iput-boolean p3, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->generate:Z

    .line 94
    return-void
.end method

.method static synthetic access$000()Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker;
    .locals 1

    .line 49
    sget-object v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->INVOKER:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker;

    return-object v0
.end method

.method public static of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/security/PrivilegedAction<",
            "TT;>;"
        }
    .end annotation

    .line 104
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/security/PrivilegedAction;

    move-result-object v0

    return-object v0
.end method

.method protected static of(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/security/PrivilegedAction;
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/security/PrivilegedAction<",
            "TT;>;"
        }
    .end annotation

    .line 116
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-boolean v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->GENERATE:Z

    invoke-static {p0, p1, v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;Ljava/lang/ClassLoader;Z)Ljava/security/PrivilegedAction;

    move-result-object v0

    return-object v0
.end method

.method protected static of(Ljava/lang/Class;Ljava/lang/ClassLoader;Z)Ljava/security/PrivilegedAction;
    .locals 3
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "generate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Ljava/security/PrivilegedAction<",
            "TT;>;"
        }
    .end annotation

    .line 129
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    const-class v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    const-class v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    invoke-interface {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;->value()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.security."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;

    invoke-direct {v0, p0, p1, p2}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;Z)V

    return-object v0

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Classes related to Java security cannot be proxied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to be annotated with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an interface instead of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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
    iget-boolean v2, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->generate:Z

    check-cast p1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;

    iget-boolean v3, p1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->generate:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    iget-object v3, p1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->classLoader:Ljava/lang/ClassLoader;

    iget-object p1, p1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->classLoader:Ljava/lang/ClassLoader;

    if-eqz p1, :cond_5

    if-eqz v2, :cond_6

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_5
    if-eqz v2, :cond_7

    :cond_6
    return v1

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ClassLoader;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->generate:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public run()Ljava/lang/Object;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;, "Lnet/bytebuddy/utility/dispatcher/JavaDispatcher<TT;>;"
    move-object/from16 v1, p0

    const-string v2, "Instance check requires a boolean return type: "

    const-string v3, "Instance check requires a single regular-typed argument: "

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 146
    .local v4, "dispatchers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;>;"
    iget-object v5, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    const-class v6, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Defaults;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    .line 147
    .local v5, "defaults":Z
    iget-object v6, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    const-class v7, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    invoke-interface {v6}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;->value()Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, "name":Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_0
    iget-object v9, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v6, v7, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_14

    .line 177
    .local v9, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 178
    iget-boolean v10, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->generate:Z

    .line 179
    .local v10, "generate":Z
    iget-object v11, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v11

    array-length v12, v11

    move v13, v7

    :goto_0
    if-ge v13, v12, :cond_2a

    aget-object v14, v11, v13

    .line 180
    .local v14, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v15

    const-class v7, Ljava/lang/Object;

    if-ne v15, v7, :cond_0

    .line 181
    goto/16 :goto_1

    .line 183
    :cond_0
    const-class v7, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Instance;

    invoke-virtual {v14, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 184
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-ne v7, v8, :cond_2

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    const/4 v15, 0x0

    aget-object v7, v7, v15

    invoke-virtual {v7, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 186
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v7, v15, :cond_1

    .line 189
    new-instance v7, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForInstanceCheck;

    invoke-direct {v7, v9}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForInstanceCheck;-><init>(Ljava/lang/Class;)V

    invoke-interface {v4, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 187
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 185
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 191
    :cond_3
    const-class v7, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Container;

    invoke-virtual {v14, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 192
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-ne v7, v8, :cond_5

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    const/4 v15, 0x0

    aget-object v7, v7, v15

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, v15, :cond_5

    .line 194
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 197
    new-instance v7, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForContainerCreation;

    invoke-direct {v7, v9}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForContainerCreation;-><init>(Ljava/lang/Class;)V

    invoke-interface {v4, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .end local v14    # "method":Ljava/lang/reflect/Method;
    :goto_1
    move-object/from16 v24, v2

    move-object/from16 v23, v3

    move-object/from16 v22, v6

    move-object/from16 v16, v11

    move/from16 v17, v12

    goto/16 :goto_20

    .line 195
    .restart local v14    # "method":Ljava/lang/reflect/Method;
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Container creation requires an assignable array as return value: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 193
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Container creation requires a single int-typed argument: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    :cond_6
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v15, "java.lang.invoke.MethodHandles"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v15, "lookup"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_2

    .line 200
    :cond_7
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Cannot resolve Byte Buddy lookup via dispatcher"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    :cond_8
    :goto_2
    :try_start_1
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 205
    .local v7, "parameterType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v15, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$IsStatic;

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v15
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    if-nez v15, :cond_c

    :try_start_2
    const-class v15, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$IsConstructor;

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_9

    move-object/from16 v16, v11

    move/from16 v17, v12

    goto/16 :goto_3

    .line 208
    :cond_9
    const/4 v15, 0x1

    .line 209
    .local v15, "offset":I
    array-length v8, v7
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v8, :cond_b

    .line 211
    move-object/from16 v16, v11

    const/4 v8, 0x0

    :try_start_3
    aget-object v11, v7, v8

    invoke-virtual {v11, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 214
    array-length v8, v7

    const/4 v11, 0x1

    sub-int/2addr v8, v11

    new-array v8, v8, [Ljava/lang/Class;

    .line 215
    .local v8, "adjusted":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v11, v8
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v17, v12

    move/from16 v18, v15

    const/4 v12, 0x0

    const/4 v15, 0x1

    .end local v15    # "offset":I
    .local v18, "offset":I
    :try_start_4
    invoke-static {v7, v15, v8, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    move-object v7, v8

    move/from16 v15, v18

    goto/16 :goto_4

    .line 212
    .end local v8    # "adjusted":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v18    # "offset":I
    .restart local v15    # "offset":I
    :cond_a
    move/from16 v17, v12

    move/from16 v18, v15

    .end local v15    # "offset":I
    .restart local v18    # "offset":I
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot assign self type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " on "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "dispatchers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;>;"
    .end local v5    # "defaults":Z
    .end local v6    # "name":Ljava/lang/String;
    .end local v9    # "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "generate":Z
    .end local v14    # "method":Ljava/lang/reflect/Method;
    throw v8

    .line 304
    .end local v7    # "parameterType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v18    # "offset":I
    .restart local v4    # "dispatchers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;>;"
    .restart local v5    # "defaults":Z
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v9    # "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "generate":Z
    .restart local v14    # "method":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v0

    move/from16 v17, v12

    move-object/from16 v24, v2

    move-object/from16 v23, v3

    move-object/from16 v22, v6

    move-object v2, v0

    goto/16 :goto_16

    .line 300
    :catch_0
    move-exception v0

    move/from16 v17, v12

    move-object/from16 v24, v2

    move-object/from16 v23, v3

    move-object/from16 v22, v6

    move-object v2, v0

    goto/16 :goto_18

    .line 296
    :catch_1
    move-exception v0

    move/from16 v17, v12

    move-object/from16 v24, v2

    move-object/from16 v23, v3

    move-object/from16 v22, v6

    move-object v2, v0

    goto/16 :goto_1c

    .line 210
    .restart local v7    # "parameterType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v15    # "offset":I
    :cond_b
    move-object/from16 v16, v11

    move/from16 v17, v12

    move/from16 v18, v15

    .end local v15    # "offset":I
    .restart local v18    # "offset":I
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Expected self type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "dispatchers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;>;"
    .end local v5    # "defaults":Z
    .end local v6    # "name":Ljava/lang/String;
    .end local v9    # "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "generate":Z
    .end local v14    # "method":Ljava/lang/reflect/Method;
    throw v8
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 304
    .end local v7    # "parameterType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v18    # "offset":I
    .restart local v4    # "dispatchers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;>;"
    .restart local v5    # "defaults":Z
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v9    # "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "generate":Z
    .restart local v14    # "method":Ljava/lang/reflect/Method;
    :catchall_1
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v23, v3

    move-object/from16 v22, v6

    move-object v2, v0

    goto/16 :goto_16

    .line 300
    :catch_2
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v23, v3

    move-object/from16 v22, v6

    move-object v2, v0

    goto/16 :goto_18

    .line 296
    :catch_3
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v23, v3

    move-object/from16 v22, v6

    move-object v2, v0

    goto/16 :goto_1c

    .line 304
    :catchall_2
    move-exception v0

    move-object/from16 v16, v11

    move/from16 v17, v12

    move-object/from16 v24, v2

    move-object/from16 v23, v3

    move-object/from16 v22, v6

    move-object v2, v0

    goto/16 :goto_16

    .line 300
    :catch_4
    move-exception v0

    move-object/from16 v16, v11

    move/from16 v17, v12

    move-object/from16 v24, v2

    move-object/from16 v23, v3

    move-object/from16 v22, v6

    move-object v2, v0

    goto/16 :goto_18

    .line 296
    :catch_5
    move-exception v0

    move-object/from16 v16, v11

    move/from16 v17, v12

    move-object/from16 v24, v2

    move-object/from16 v23, v3

    move-object/from16 v22, v6

    move-object v2, v0

    goto/16 :goto_1c

    .line 205
    .restart local v7    # "parameterType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_c
    move-object/from16 v16, v11

    move/from16 v17, v12

    .line 206
    :goto_3
    const/4 v15, 0x0

    .line 218
    .restart local v15    # "offset":I
    :goto_4
    :try_start_5
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v8

    .line 219
    .local v8, "parameterAnnotation":[[Ljava/lang/annotation/Annotation;
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_5
    array-length v12, v7

    if-ge v11, v12, :cond_15

    .line 220
    add-int v12, v11, v15

    aget-object v12, v8, v12

    move-object/from16 v18, v8

    .end local v8    # "parameterAnnotation":[[Ljava/lang/annotation/Annotation;
    .local v18, "parameterAnnotation":[[Ljava/lang/annotation/Annotation;
    array-length v8, v12

    move/from16 v19, v15

    const/4 v15, 0x0

    .end local v15    # "offset":I
    .local v19, "offset":I
    :goto_6
    if-ge v15, v8, :cond_14

    aget-object v20, v12, v15

    move-object/from16 v21, v20

    .line 221
    .local v21, "annotation":Ljava/lang/annotation/Annotation;
    move/from16 v20, v8

    move-object/from16 v8, v21

    move-object/from16 v21, v12

    .end local v21    # "annotation":Ljava/lang/annotation/Annotation;
    .local v8, "annotation":Ljava/lang/annotation/Annotation;
    instance-of v12, v8, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    if-eqz v12, :cond_13

    .line 222
    const/4 v12, 0x0

    .line 223
    .local v12, "arity":I
    :goto_7
    aget-object v15, v7, v11

    invoke-virtual {v15}, Ljava/lang/Class;->isArray()Z

    move-result v15
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_10
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    if-eqz v15, :cond_d

    .line 224
    add-int/lit8 v12, v12, 0x1

    .line 225
    :try_start_6
    aget-object v15, v7, v11

    invoke-virtual {v15}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v15

    aput-object v15, v7, v11
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_7

    .line 227
    :cond_d
    const-string v15, " at "

    move-object/from16 v22, v6

    .end local v6    # "name":Ljava/lang/String;
    .local v22, "name":Ljava/lang/String;
    const-string v6, " of "

    if-lez v12, :cond_11

    .line 228
    :try_start_7
    aget-object v20, v7, v11

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->isPrimitive()Z

    move-result v20

    if-nez v20, :cond_10

    .line 230
    move/from16 v20, v12

    .end local v12    # "arity":I
    .local v20, "arity":I
    aget-object v12, v7, v11

    move-object/from16 v21, v8

    check-cast v21, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-object/from16 v23, v3

    :try_start_8
    invoke-interface/range {v21 .. v21}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;->value()Ljava/lang/String;

    move-result-object v3
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object/from16 v24, v2

    :try_start_9
    iget-object v2, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->classLoader:Ljava/lang/ClassLoader;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move/from16 v25, v10

    const/4 v10, 0x0

    .end local v10    # "generate":Z
    .local v25, "generate":Z
    :try_start_a
    invoke-static {v3, v10, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v12, v20

    .line 234
    .end local v20    # "arity":I
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v12    # "arity":I
    :goto_8
    add-int/lit8 v3, v12, -0x1

    .end local v12    # "arity":I
    .local v3, "arity":I
    if-lez v12, :cond_e

    .line 235
    const/16 v6, 0x5b

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v12, v3

    goto :goto_8

    .line 237
    :cond_e
    const/16 v6, 0x4c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v10, v8

    check-cast v10, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    .line 238
    invoke-interface {v10}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;->value()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 239
    const/16 v10, 0x3b

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 240
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->classLoader:Ljava/lang/ClassLoader;

    .line 237
    const/4 v12, 0x0

    invoke-static {v6, v12, v10}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v7, v11

    .line 241
    .end local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    goto/16 :goto_c

    .line 231
    .end local v3    # "arity":I
    .restart local v20    # "arity":I
    :cond_f
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot resolve to component type: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v10, v8

    check-cast v10, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    invoke-interface {v10}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;->value()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "dispatchers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;>;"
    .end local v5    # "defaults":Z
    .end local v9    # "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "method":Ljava/lang/reflect/Method;
    .end local v22    # "name":Ljava/lang/String;
    .end local v25    # "generate":Z
    throw v2

    .line 304
    .end local v7    # "parameterType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v8    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v11    # "index":I
    .end local v18    # "parameterAnnotation":[[Ljava/lang/annotation/Annotation;
    .end local v19    # "offset":I
    .end local v20    # "arity":I
    .restart local v4    # "dispatchers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;>;"
    .restart local v5    # "defaults":Z
    .restart local v9    # "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "generate":Z
    .restart local v14    # "method":Ljava/lang/reflect/Method;
    .restart local v22    # "name":Ljava/lang/String;
    :catchall_3
    move-exception v0

    goto :goto_9

    .line 300
    :catch_6
    move-exception v0

    goto :goto_a

    .line 296
    :catch_7
    move-exception v0

    goto :goto_b

    .line 304
    :catchall_4
    move-exception v0

    move-object/from16 v24, v2

    goto :goto_9

    .line 300
    :catch_8
    move-exception v0

    move-object/from16 v24, v2

    goto :goto_a

    .line 296
    :catch_9
    move-exception v0

    move-object/from16 v24, v2

    goto :goto_b

    .line 229
    .restart local v7    # "parameterType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v8    # "annotation":Ljava/lang/annotation/Annotation;
    .restart local v11    # "index":I
    .restart local v12    # "arity":I
    .restart local v18    # "parameterAnnotation":[[Ljava/lang/annotation/Annotation;
    .restart local v19    # "offset":I
    :cond_10
    move-object/from16 v24, v2

    move-object/from16 v23, v3

    move/from16 v25, v10

    move/from16 v20, v12

    .end local v10    # "generate":Z
    .end local v12    # "arity":I
    .restart local v20    # "arity":I
    .restart local v25    # "generate":Z
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Primitive values are not supposed to be proxied: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "dispatchers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;>;"
    .end local v5    # "defaults":Z
    .end local v9    # "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "method":Ljava/lang/reflect/Method;
    .end local v22    # "name":Ljava/lang/String;
    .end local v25    # "generate":Z
    throw v2

    .line 304
    .end local v7    # "parameterType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v8    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v11    # "index":I
    .end local v18    # "parameterAnnotation":[[Ljava/lang/annotation/Annotation;
    .end local v19    # "offset":I
    .end local v20    # "arity":I
    .restart local v4    # "dispatchers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;>;"
    .restart local v5    # "defaults":Z
    .restart local v9    # "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "generate":Z
    .restart local v14    # "method":Ljava/lang/reflect/Method;
    .restart local v22    # "name":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v23, v3

    :goto_9
    move/from16 v25, v10

    move-object v2, v0

    .end local v10    # "generate":Z
    .restart local v25    # "generate":Z
    goto/16 :goto_16

    .line 300
    .end local v25    # "generate":Z
    .restart local v10    # "generate":Z
    :catch_a
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v23, v3

    :goto_a
    move/from16 v25, v10

    move-object v2, v0

    .end local v10    # "generate":Z
    .restart local v25    # "generate":Z
    goto/16 :goto_18

    .line 296
    .end local v25    # "generate":Z
    .restart local v10    # "generate":Z
    :catch_b
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v23, v3

    :goto_b
    move/from16 v25, v10

    move-object v2, v0

    .end local v10    # "generate":Z
    .restart local v25    # "generate":Z
    goto/16 :goto_1c

    .line 242
    .end local v25    # "generate":Z
    .restart local v7    # "parameterType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v8    # "annotation":Ljava/lang/annotation/Annotation;
    .restart local v10    # "generate":Z
    .restart local v11    # "index":I
    .restart local v12    # "arity":I
    .restart local v18    # "parameterAnnotation":[[Ljava/lang/annotation/Annotation;
    .restart local v19    # "offset":I
    :cond_11
    move-object/from16 v24, v2

    move-object/from16 v23, v3

    move/from16 v25, v10

    move/from16 v20, v12

    .end local v10    # "generate":Z
    .end local v12    # "arity":I
    .restart local v20    # "arity":I
    .restart local v25    # "generate":Z
    move-object v2, v8

    check-cast v2, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    invoke-interface {v2}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;->value()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->classLoader:Ljava/lang/ClassLoader;

    const/4 v10, 0x0

    invoke-static {v2, v10, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 243
    .local v2, "resolved":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v3, v7, v11

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 246
    aput-object v2, v7, v11

    .line 248
    .end local v2    # "resolved":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_c

    .line 244
    .restart local v2    # "resolved":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_12
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot resolve to type: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "dispatchers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;>;"
    .end local v5    # "defaults":Z
    .end local v9    # "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "method":Ljava/lang/reflect/Method;
    .end local v22    # "name":Ljava/lang/String;
    .end local v25    # "generate":Z
    throw v3

    .line 221
    .end local v2    # "resolved":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "arity":I
    .restart local v4    # "dispatchers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;>;"
    .restart local v5    # "defaults":Z
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v9    # "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "generate":Z
    .restart local v14    # "method":Ljava/lang/reflect/Method;
    :cond_13
    move-object/from16 v24, v2

    move-object/from16 v23, v3

    move-object/from16 v22, v6

    move/from16 v25, v10

    .line 220
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v10    # "generate":Z
    .restart local v22    # "name":Ljava/lang/String;
    .restart local v25    # "generate":Z
    add-int/lit8 v15, v15, 0x1

    move/from16 v8, v20

    move-object/from16 v12, v21

    goto/16 :goto_6

    .end local v22    # "name":Ljava/lang/String;
    .end local v25    # "generate":Z
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v10    # "generate":Z
    :cond_14
    move-object/from16 v24, v2

    move-object/from16 v23, v3

    move-object/from16 v22, v6

    move/from16 v25, v10

    .line 219
    .end local v6    # "name":Ljava/lang/String;
    .end local v10    # "generate":Z
    .restart local v22    # "name":Ljava/lang/String;
    .restart local v25    # "generate":Z
    :goto_c
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, v18

    move/from16 v15, v19

    move-object/from16 v6, v22

    move-object/from16 v3, v23

    move-object/from16 v2, v24

    move/from16 v10, v25

    goto/16 :goto_5

    .end local v18    # "parameterAnnotation":[[Ljava/lang/annotation/Annotation;
    .end local v19    # "offset":I
    .end local v22    # "name":Ljava/lang/String;
    .end local v25    # "generate":Z
    .restart local v6    # "name":Ljava/lang/String;
    .local v8, "parameterAnnotation":[[Ljava/lang/annotation/Annotation;
    .restart local v10    # "generate":Z
    .restart local v15    # "offset":I
    :cond_15
    move-object/from16 v24, v2

    move-object/from16 v23, v3

    move-object/from16 v22, v6

    move-object/from16 v18, v8

    move/from16 v25, v10

    move/from16 v19, v15

    .line 252
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "parameterAnnotation":[[Ljava/lang/annotation/Annotation;
    .end local v10    # "generate":Z
    .end local v11    # "index":I
    .end local v15    # "offset":I
    .restart local v18    # "parameterAnnotation":[[Ljava/lang/annotation/Annotation;
    .restart local v19    # "offset":I
    .restart local v22    # "name":Ljava/lang/String;
    .restart local v25    # "generate":Z
    const-class v2, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$IsConstructor;

    invoke-virtual {v14, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_a} :catch_e
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    const-string v3, " to "

    const-string v6, "Cannot assign "

    if-eqz v2, :cond_19

    .line 253
    :try_start_b
    invoke-virtual {v9, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 254
    .local v2, "resolved":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 257
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3

    const/4 v6, 0x1

    and-int/2addr v3, v6

    if-eqz v3, :cond_17

    invoke-virtual {v9}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    and-int/2addr v3, v6

    if-nez v3, :cond_16

    goto :goto_d

    :cond_16
    move/from16 v10, v25

    goto :goto_e

    .line 258
    :cond_17
    :goto_d
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_b} :catch_e
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 259
    const/4 v10, 0x0

    .line 261
    .end local v25    # "generate":Z
    .restart local v10    # "generate":Z
    :goto_e
    :try_start_c
    new-instance v3, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForConstructor;

    invoke-direct {v3, v2}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-interface {v4, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 262
    nop

    .end local v2    # "resolved":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto/16 :goto_1f

    .line 304
    .end local v7    # "parameterType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v18    # "parameterAnnotation":[[Ljava/lang/annotation/Annotation;
    .end local v19    # "offset":I
    :catchall_6
    move-exception v0

    move-object v2, v0

    goto/16 :goto_16

    .line 300
    :catch_c
    move-exception v0

    move-object v2, v0

    goto/16 :goto_18

    .line 296
    :catch_d
    move-exception v0

    move-object v2, v0

    goto/16 :goto_1c

    .line 255
    .end local v10    # "generate":Z
    .restart local v2    # "resolved":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v7    # "parameterType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v18    # "parameterAnnotation":[[Ljava/lang/annotation/Annotation;
    .restart local v19    # "offset":I
    .restart local v25    # "generate":Z
    :cond_18
    :try_start_d
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "dispatchers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;>;"
    .end local v5    # "defaults":Z
    .end local v9    # "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "method":Ljava/lang/reflect/Method;
    .end local v22    # "name":Ljava/lang/String;
    .end local v25    # "generate":Z
    throw v8

    .line 263
    .end local v2    # "resolved":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v4    # "dispatchers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;>;"
    .restart local v5    # "defaults":Z
    .restart local v9    # "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "method":Ljava/lang/reflect/Method;
    .restart local v22    # "name":Ljava/lang/String;
    .restart local v25    # "generate":Z
    :cond_19
    const-class v2, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    invoke-virtual {v14, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    .line 264
    .local v2, "proxied":Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    if-nez v2, :cond_1a

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    goto :goto_f

    :cond_1a
    invoke-interface {v2}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;->value()Ljava/lang/String;

    move-result-object v8

    :goto_f
    invoke-virtual {v9, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 265
    .local v8, "resolved":Ljava/lang/reflect/Method;
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_25

    .line 269
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v6, v3
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_d} :catch_f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_d} :catch_e
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    const/4 v10, 0x0

    :goto_10
    const-string v11, "Resolved method for "

    if-ge v10, v6, :cond_1f

    :try_start_e
    aget-object v12, v3, v10

    .line 270
    .local v12, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v15, Ljava/lang/RuntimeException;

    invoke-virtual {v15, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-nez v15, :cond_1e

    const-class v15, Ljava/lang/Error;

    invoke-virtual {v15, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_1b

    .line 271
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    goto :goto_12

    .line 273
    :cond_1b
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v15

    move-object/from16 v20, v2

    .end local v2    # "proxied":Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    .local v20, "proxied":Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    array-length v2, v15

    move-object/from16 v21, v3

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_1d

    aget-object v26, v15, v3

    move-object/from16 v27, v26

    .line 274
    .local v27, "exception":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move/from16 v26, v2

    move-object/from16 v2, v27

    .end local v27    # "exception":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v2, "exception":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v27

    if-eqz v27, :cond_1c

    .line 275
    goto :goto_12

    .line 273
    .end local v2    # "exception":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v26

    goto :goto_11

    .line 278
    :cond_1d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " throws undeclared checked exception "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "dispatchers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;>;"
    .end local v5    # "defaults":Z
    .end local v9    # "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "method":Ljava/lang/reflect/Method;
    .end local v22    # "name":Ljava/lang/String;
    .end local v25    # "generate":Z
    throw v2

    .line 270
    .end local v20    # "proxied":Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    .local v2, "proxied":Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    .restart local v4    # "dispatchers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;>;"
    .restart local v5    # "defaults":Z
    .restart local v9    # "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "method":Ljava/lang/reflect/Method;
    .restart local v22    # "name":Ljava/lang/String;
    .restart local v25    # "generate":Z
    :cond_1e
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    .line 269
    .end local v2    # "proxied":Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    .end local v12    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v20    # "proxied":Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    :goto_12
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    goto :goto_10

    .line 280
    .end local v20    # "proxied":Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    .restart local v2    # "proxied":Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    :cond_1f
    move-object/from16 v20, v2

    .end local v2    # "proxied":Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    .restart local v20    # "proxied":Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_21

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    and-int/2addr v2, v3

    if-nez v2, :cond_20

    goto :goto_13

    :cond_20
    move/from16 v10, v25

    goto :goto_14

    .line 281
    :cond_21
    :goto_13
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_e} :catch_f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_e} :catch_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 282
    const/4 v10, 0x0

    .line 284
    .end local v25    # "generate":Z
    .restart local v10    # "generate":Z
    :goto_14
    :try_start_f
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 285
    const-class v2, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$IsStatic;

    invoke-virtual {v14, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 288
    new-instance v2, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForStaticMethod;

    invoke-direct {v2, v8}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForStaticMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {v4, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1f

    .line 286
    :cond_22
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " was expected to be static: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "dispatchers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;>;"
    .end local v5    # "defaults":Z
    .end local v9    # "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "generate":Z
    .end local v14    # "method":Ljava/lang/reflect/Method;
    .end local v22    # "name":Ljava/lang/String;
    throw v2

    .line 290
    .restart local v4    # "dispatchers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;>;"
    .restart local v5    # "defaults":Z
    .restart local v9    # "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "generate":Z
    .restart local v14    # "method":Ljava/lang/reflect/Method;
    .restart local v22    # "name":Ljava/lang/String;
    :cond_23
    const-class v2, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$IsStatic;

    invoke-virtual {v14, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 293
    new-instance v2, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForNonStaticMethod;

    invoke-direct {v2, v8}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForNonStaticMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {v4, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1f

    .line 291
    :cond_24
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " was expected to be virtual: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "dispatchers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;>;"
    .end local v5    # "defaults":Z
    .end local v9    # "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "generate":Z
    .end local v14    # "method":Ljava/lang/reflect/Method;
    .end local v22    # "name":Ljava/lang/String;
    throw v2
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 266
    .end local v20    # "proxied":Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    .restart local v2    # "proxied":Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    .restart local v4    # "dispatchers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;>;"
    .restart local v5    # "defaults":Z
    .restart local v9    # "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "method":Ljava/lang/reflect/Method;
    .restart local v22    # "name":Ljava/lang/String;
    .restart local v25    # "generate":Z
    :cond_25
    move-object/from16 v20, v2

    .end local v2    # "proxied":Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    .restart local v20    # "proxied":Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    :try_start_10
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "dispatchers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;>;"
    .end local v5    # "defaults":Z
    .end local v9    # "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "method":Ljava/lang/reflect/Method;
    .end local v22    # "name":Ljava/lang/String;
    .end local v25    # "generate":Z
    throw v2
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_10} :catch_e
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 304
    .end local v7    # "parameterType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v8    # "resolved":Ljava/lang/reflect/Method;
    .end local v18    # "parameterAnnotation":[[Ljava/lang/annotation/Annotation;
    .end local v19    # "offset":I
    .end local v20    # "proxied":Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    .restart local v4    # "dispatchers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;>;"
    .restart local v5    # "defaults":Z
    .restart local v9    # "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "method":Ljava/lang/reflect/Method;
    .restart local v22    # "name":Ljava/lang/String;
    .restart local v25    # "generate":Z
    :catchall_7
    move-exception v0

    move-object v2, v0

    move/from16 v10, v25

    goto :goto_16

    .line 300
    :catch_e
    move-exception v0

    move-object v2, v0

    move/from16 v10, v25

    goto/16 :goto_18

    .line 296
    :catch_f
    move-exception v0

    move-object v2, v0

    move/from16 v10, v25

    goto/16 :goto_1c

    .line 304
    .end local v22    # "name":Ljava/lang/String;
    .end local v25    # "generate":Z
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v10    # "generate":Z
    :catchall_8
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v23, v3

    move-object/from16 v22, v6

    move/from16 v25, v10

    goto :goto_15

    .line 300
    :catch_10
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v23, v3

    move-object/from16 v22, v6

    move/from16 v25, v10

    goto :goto_17

    .line 296
    :catch_11
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v23, v3

    move-object/from16 v22, v6

    move/from16 v25, v10

    goto/16 :goto_1b

    .line 304
    :catchall_9
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v23, v3

    move-object/from16 v22, v6

    move/from16 v25, v10

    move-object/from16 v16, v11

    move/from16 v17, v12

    :goto_15
    move-object v2, v0

    .line 305
    .end local v6    # "name":Ljava/lang/String;
    .local v2, "throwable":Ljava/lang/Throwable;
    .restart local v22    # "name":Ljava/lang/String;
    :goto_16
    new-instance v3, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForUnresolvedMethod;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForUnresolvedMethod;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_20

    .line 300
    .end local v2    # "throwable":Ljava/lang/Throwable;
    .end local v22    # "name":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    :catch_12
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v23, v3

    move-object/from16 v22, v6

    move/from16 v25, v10

    move-object/from16 v16, v11

    move/from16 v17, v12

    :goto_17
    move-object v2, v0

    .line 301
    .end local v6    # "name":Ljava/lang/String;
    .local v2, "exception":Ljava/lang/NoSuchMethodException;
    .restart local v22    # "name":Ljava/lang/String;
    :goto_18
    if-nez v5, :cond_27

    const-class v3, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Defaults;

    invoke-virtual {v14, v3}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_19

    .line 302
    :cond_26
    new-instance v3, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForUnresolvedMethod;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Method not available on current VM: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 303
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForUnresolvedMethod;-><init>(Ljava/lang/String;)V

    goto :goto_1a

    .line 302
    :cond_27
    :goto_19
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue;->of(Ljava/lang/Class;)Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;

    move-result-object v3

    .line 301
    :goto_1a
    invoke-interface {v4, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v2    # "exception":Ljava/lang/NoSuchMethodException;
    goto :goto_1f

    .line 296
    .end local v22    # "name":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    :catch_13
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v23, v3

    move-object/from16 v22, v6

    move/from16 v25, v10

    move-object/from16 v16, v11

    move/from16 v17, v12

    :goto_1b
    move-object v2, v0

    .line 297
    .end local v6    # "name":Ljava/lang/String;
    .local v2, "exception":Ljava/lang/ClassNotFoundException;
    .restart local v22    # "name":Ljava/lang/String;
    :goto_1c
    if-nez v5, :cond_29

    const-class v3, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Defaults;

    invoke-virtual {v14, v3}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_1d

    .line 298
    :cond_28
    new-instance v3, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForUnresolvedMethod;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Class not available on current VM: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 299
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForUnresolvedMethod;-><init>(Ljava/lang/String;)V

    goto :goto_1e

    .line 298
    :cond_29
    :goto_1d
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue;->of(Ljava/lang/Class;)Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;

    move-result-object v3

    .line 297
    :goto_1e
    invoke-interface {v4, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .end local v2    # "exception":Ljava/lang/ClassNotFoundException;
    :goto_1f
    nop

    .line 179
    .end local v14    # "method":Ljava/lang/reflect/Method;
    :goto_20
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v11, v16

    move/from16 v12, v17

    move-object/from16 v6, v22

    move-object/from16 v3, v23

    move-object/from16 v2, v24

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_0

    .line 309
    .end local v22    # "name":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    :cond_2a
    move-object/from16 v22, v6

    move/from16 v25, v10

    .end local v6    # "name":Ljava/lang/String;
    .end local v10    # "generate":Z
    .restart local v22    # "name":Ljava/lang/String;
    .restart local v25    # "generate":Z
    if-eqz v25, :cond_2b

    .line 310
    iget-object v2, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    invoke-static {v2, v4}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader;->proxy(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 312
    :cond_2b
    iget-object v2, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    iget-object v6, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v3, v7

    new-instance v6, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$ProxiedInvocationHandler;

    .line 314
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$ProxiedInvocationHandler;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 312
    invoke-static {v2, v3, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 151
    .end local v9    # "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v22    # "name":Ljava/lang/String;
    .end local v25    # "generate":Z
    .restart local v6    # "name":Ljava/lang/String;
    :catch_14
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v23, v3

    move-object/from16 v22, v6

    move-object v2, v0

    .line 152
    .end local v6    # "name":Ljava/lang/String;
    .restart local v2    # "exception":Ljava/lang/ClassNotFoundException;
    .restart local v22    # "name":Ljava/lang/String;
    iget-object v3, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v6, v3

    const/4 v15, 0x0

    :goto_21
    if-ge v15, v6, :cond_32

    aget-object v7, v3, v15

    .line 153
    .local v7, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/Object;

    if-ne v8, v9, :cond_2c

    .line 154
    move-object/from16 v9, v23

    move-object/from16 v8, v24

    goto/16 :goto_24

    .line 156
    :cond_2c
    const-class v8, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Instance;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 157
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2e

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-nez v8, :cond_2e

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-nez v8, :cond_2e

    .line 159
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_2d

    .line 162
    sget-object v8, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue;->BOOLEAN:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue;

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    goto :goto_24

    .line 160
    :cond_2d
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v24

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    :cond_2e
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v23

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 165
    :cond_2f
    move-object/from16 v9, v23

    move-object/from16 v8, v24

    if-nez v5, :cond_31

    const-class v10, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Defaults;

    invoke-virtual {v7, v10}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_30

    goto :goto_22

    .line 166
    :cond_30
    new-instance v10, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForUnresolvedMethod;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Type not available on current VM: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 167
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForUnresolvedMethod;-><init>(Ljava/lang/String;)V

    goto :goto_23

    .line 166
    :cond_31
    :goto_22
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue;->of(Ljava/lang/Class;)Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;

    move-result-object v10

    .line 165
    :goto_23
    invoke-interface {v4, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :goto_24
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v24, v8

    move-object/from16 v23, v9

    goto/16 :goto_21

    .line 170
    :cond_32
    iget-boolean v3, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->generate:Z

    if-eqz v3, :cond_33

    .line 171
    iget-object v3, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    invoke-static {v3, v4}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader;->proxy(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 173
    :cond_33
    iget-object v3, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    iget-object v7, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    new-instance v7, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$ProxiedInvocationHandler;

    move-object/from16 v8, v22

    .end local v22    # "name":Ljava/lang/String;
    .local v8, "name":Ljava/lang/String;
    invoke-direct {v7, v8, v4}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$ProxiedInvocationHandler;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v3, v6, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method
