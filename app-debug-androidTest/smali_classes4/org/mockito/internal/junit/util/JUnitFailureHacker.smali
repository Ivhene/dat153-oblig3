.class public Lorg/mockito/internal/junit/util/JUnitFailureHacker;
.super Ljava/lang/Object;
.source "JUnitFailureHacker.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 85
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getFieldFromHierarchy(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 4
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 67
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lorg/mockito/internal/junit/util/JUnitFailureHacker;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 68
    .local v0, "f":Ljava/lang/reflect/Field;
    :goto_0
    if-nez v0, :cond_0

    const-class v1, Ljava/lang/Object;

    if-eq p0, v1, :cond_0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 70
    invoke-static {p0, p1}, Lorg/mockito/internal/junit/util/JUnitFailureHacker;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_0
    if-eqz v0, :cond_1

    .line 80
    return-object v0

    .line 73
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You want me to get this field: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' on this class: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 77
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' but this field is not declared within the hierarchy of this class!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getInternalState(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "field"    # Ljava/lang/String;

    .line 41
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getMemberAccessor()Lorg/mockito/plugins/MemberAccessor;

    move-result-object v0

    .line 42
    .local v0, "accessor":Lorg/mockito/plugins/MemberAccessor;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 44
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {v1, p1}, Lorg/mockito/internal/junit/util/JUnitFailureHacker;->getFieldFromHierarchy(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 45
    .local v2, "f":Ljava/lang/reflect/Field;
    invoke-interface {v0, v2, p0}, Lorg/mockito/plugins/MemberAccessor;->get(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 46
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 47
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unable to get internal state on a private field. Please report to mockito mailing list."

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "warnings"    # Ljava/lang/String;

    .line 37
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static setInternalState(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 54
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getMemberAccessor()Lorg/mockito/plugins/MemberAccessor;

    move-result-object v0

    .line 55
    .local v0, "accessor":Lorg/mockito/plugins/MemberAccessor;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 57
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {v1, p1}, Lorg/mockito/internal/junit/util/JUnitFailureHacker;->getFieldFromHierarchy(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 58
    .local v2, "f":Ljava/lang/reflect/Field;
    invoke-interface {v0, v2, p0, p2}, Lorg/mockito/plugins/MemberAccessor;->set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v2    # "f":Ljava/lang/reflect/Field;
    nop

    .line 64
    return-void

    .line 59
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unable to set internal state on a private field. Please report to mockito mailing list."

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public appendWarnings(Lorg/junit/runner/notification/Failure;Ljava/lang/String;)V
    .locals 5
    .param p1, "failure"    # Lorg/junit/runner/notification/Failure;
    .param p2, "warnings"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0, p2}, Lorg/mockito/internal/junit/util/JUnitFailureHacker;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    return-void

    .line 23
    :cond_0
    const-string v0, "fThrownException"

    invoke-static {p1, v0}, Lorg/mockito/internal/junit/util/JUnitFailureHacker;->getInternalState(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 25
    .local v1, "throwable":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contains both: actual test failure *and* Mockito warnings.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n *** The actual failure is because of: ***\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "newMessage":Ljava/lang/String;
    new-instance v3, Lorg/mockito/internal/exceptions/ExceptionIncludingMockitoWarnings;

    invoke-direct {v3, v2, v1}, Lorg/mockito/internal/exceptions/ExceptionIncludingMockitoWarnings;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .local v3, "e":Lorg/mockito/internal/exceptions/ExceptionIncludingMockitoWarnings;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/mockito/internal/exceptions/ExceptionIncludingMockitoWarnings;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 33
    invoke-static {p1, v0, v3}, Lorg/mockito/internal/junit/util/JUnitFailureHacker;->setInternalState(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    return-void
.end method
