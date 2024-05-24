.class public final Lorg/mockito/internal/util/JavaEightUtil;
.super Ljava/lang/Object;
.source "JavaEightUtil.java"


# static fields
.field private static emptyDuration:Ljava/lang/Object;

.field private static emptyOptional:Ljava/lang/Object;

.field private static emptyOptionalDouble:Ljava/lang/Object;

.field private static emptyOptionalInt:Ljava/lang/Object;

.field private static emptyOptionalLong:Ljava/lang/Object;

.field private static emptyPeriod:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static emptyDoubleStream()Ljava/lang/Object;
    .locals 2

    .line 104
    const-string v0, "java.util.stream.DoubleStream"

    const-string v1, "empty"

    invoke-static {v0, v1}, Lorg/mockito/internal/util/JavaEightUtil;->invokeNullaryFactoryMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static emptyDuration()Ljava/lang/Object;
    .locals 2

    .line 134
    sget-object v0, Lorg/mockito/internal/util/JavaEightUtil;->emptyDuration:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 135
    return-object v0

    .line 138
    :cond_0
    const-string v0, "java.time.Duration"

    const-string v1, "ZERO"

    invoke-static {v0, v1}, Lorg/mockito/internal/util/JavaEightUtil;->getStaticFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/JavaEightUtil;->emptyDuration:Ljava/lang/Object;

    return-object v0
.end method

.method public static emptyIntStream()Ljava/lang/Object;
    .locals 2

    .line 114
    const-string v0, "java.util.stream.IntStream"

    const-string v1, "empty"

    invoke-static {v0, v1}, Lorg/mockito/internal/util/JavaEightUtil;->invokeNullaryFactoryMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static emptyLongStream()Ljava/lang/Object;
    .locals 2

    .line 124
    const-string v0, "java.util.stream.LongStream"

    const-string v1, "empty"

    invoke-static {v0, v1}, Lorg/mockito/internal/util/JavaEightUtil;->invokeNullaryFactoryMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static emptyOptional()Ljava/lang/Object;
    .locals 2

    .line 37
    sget-object v0, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptional:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 38
    return-object v0

    .line 41
    :cond_0
    const-string v0, "java.util.Optional"

    const-string v1, "empty"

    invoke-static {v0, v1}, Lorg/mockito/internal/util/JavaEightUtil;->invokeNullaryFactoryMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptional:Ljava/lang/Object;

    return-object v0
.end method

.method public static emptyOptionalDouble()Ljava/lang/Object;
    .locals 2

    .line 51
    sget-object v0, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptionalDouble:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 52
    return-object v0

    .line 55
    :cond_0
    nop

    .line 56
    const-string v0, "java.util.OptionalDouble"

    const-string v1, "empty"

    invoke-static {v0, v1}, Lorg/mockito/internal/util/JavaEightUtil;->invokeNullaryFactoryMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptionalDouble:Ljava/lang/Object;

    .line 55
    return-object v0
.end method

.method public static emptyOptionalInt()Ljava/lang/Object;
    .locals 2

    .line 66
    sget-object v0, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptionalInt:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 67
    return-object v0

    .line 70
    :cond_0
    const-string v0, "java.util.OptionalInt"

    const-string v1, "empty"

    invoke-static {v0, v1}, Lorg/mockito/internal/util/JavaEightUtil;->invokeNullaryFactoryMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptionalInt:Ljava/lang/Object;

    return-object v0
.end method

.method public static emptyOptionalLong()Ljava/lang/Object;
    .locals 2

    .line 80
    sget-object v0, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptionalLong:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 81
    return-object v0

    .line 84
    :cond_0
    const-string v0, "java.util.OptionalLong"

    const-string v1, "empty"

    invoke-static {v0, v1}, Lorg/mockito/internal/util/JavaEightUtil;->invokeNullaryFactoryMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptionalLong:Ljava/lang/Object;

    return-object v0
.end method

.method public static emptyPeriod()Ljava/lang/Object;
    .locals 2

    .line 148
    sget-object v0, Lorg/mockito/internal/util/JavaEightUtil;->emptyPeriod:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 149
    return-object v0

    .line 152
    :cond_0
    const-string v0, "java.time.Period"

    const-string v1, "ZERO"

    invoke-static {v0, v1}, Lorg/mockito/internal/util/JavaEightUtil;->getStaticFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/JavaEightUtil;->emptyPeriod:Ljava/lang/Object;

    return-object v0
.end method

.method public static emptyStream()Ljava/lang/Object;
    .locals 2

    .line 94
    const-string v0, "java.util.stream.Stream"

    const-string v1, "empty"

    invoke-static {v0, v1}, Lorg/mockito/internal/util/JavaEightUtil;->invokeNullaryFactoryMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p0, "fqcn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 202
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lorg/mockito/creation/instance/InstantiationException;

    const-string v2, "Could not find %s: %s"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/mockito/creation/instance/InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static varargs getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "fqcn"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 221
    .local p2, "parameterClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0}, Lorg/mockito/internal/util/JavaEightUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 222
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 223
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/mockito/creation/instance/InstantiationException;

    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    move-result-object v2

    .line 225
    const-string v3, "Could not find %s#%s(): %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/mockito/creation/instance/InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getStaticFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "fqcn"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 183
    :try_start_0
    invoke-static {p0}, Lorg/mockito/internal/util/JavaEightUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 184
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 185
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 188
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/mockito/creation/instance/InstantiationException;

    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    move-result-object v2

    .line 190
    const-string v3, "Could not get %s#%s(): %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/mockito/creation/instance/InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static invokeNullaryFactoryMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "fqcn"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 164
    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    invoke-static {p0, p1, v1}, Lorg/mockito/internal/util/JavaEightUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 165
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 168
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/mockito/creation/instance/InstantiationException;

    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    move-result-object v2

    .line 170
    const-string v3, "Could not create %s#%s(): %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/mockito/creation/instance/InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
