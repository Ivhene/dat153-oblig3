.class public Lorg/mockito/internal/util/KotlinInlineClassUtil;
.super Ljava/lang/Object;
.source "KotlinInlineClassUtil.java"


# static fields
.field private static jvmInlineAnnotation:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    :try_start_0
    const-string v0, "kotlin.jvm.JvmInline"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/KotlinInlineClassUtil;->jvmInlineAnnotation:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 24
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInlineClassWithAssignableUnderlyingType(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 33
    .local p0, "inlineClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "underlyingType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/mockito/internal/util/KotlinInlineClassUtil;->jvmInlineAnnotation:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 34
    invoke-virtual {p0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    const-string v1, "box-impl"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    aput-object p1, v3, v0

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return v2

    .line 34
    :cond_1
    :goto_0
    return v0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    return v0
.end method

.method private static unboxInlineClassIfPossible(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "boxedValue"    # Ljava/lang/Object;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 53
    .local v0, "inlineClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v1, "unbox-impl"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 54
    .local v1, "unboxImpl":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 55
    .end local v1    # "unboxImpl":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    invoke-static {v0, v1}, Lorg/mockito/internal/exceptions/Reporter;->inlineClassWithoutUnboxImpl(Ljava/lang/Class;Ljava/lang/Exception;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v2

    throw v2
.end method

.method public static unboxUnderlyingValueIfNeeded(Lorg/mockito/invocation/InvocationOnMock;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "invocation"    # Lorg/mockito/invocation/InvocationOnMock;
    .param p1, "value"    # Ljava/lang/Object;

    .line 62
    if-eqz p1, :cond_3

    sget-object v0, Lorg/mockito/internal/util/KotlinInlineClassUtil;->jvmInlineAnnotation:Ljava/lang/Class;

    if-nez v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 67
    .local v0, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Lorg/mockito/internal/stubbing/answers/InvocationInfo;

    invoke-direct {v1, p0}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;-><init>(Lorg/mockito/invocation/InvocationOnMock;)V

    .line 68
    .local v1, "invocationInfo":Lorg/mockito/internal/stubbing/answers/InvocationInfo;
    invoke-virtual {v1}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    .line 69
    .local v2, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object p1

    .line 71
    :cond_1
    invoke-static {v0, v2}, Lorg/mockito/internal/util/KotlinInlineClassUtil;->isInlineClassWithAssignableUnderlyingType(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    invoke-static {p1}, Lorg/mockito/internal/util/KotlinInlineClassUtil;->unboxInlineClassIfPossible(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 74
    :cond_2
    return-object p1

    .line 63
    .end local v0    # "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "invocationInfo":Lorg/mockito/internal/stubbing/answers/InvocationInfo;
    .end local v2    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_0
    return-object p1
.end method
