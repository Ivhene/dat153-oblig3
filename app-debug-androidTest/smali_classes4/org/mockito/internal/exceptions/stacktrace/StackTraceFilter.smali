.class public Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;
.super Ljava/lang/Object;
.source "StackTraceFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final CLEANER:Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;

.field private static GET_STACK_TRACE_ELEMENT:Ljava/lang/reflect/Method; = null

.field private static JAVA_LANG_ACCESS:Ljava/lang/Object; = null

.field static final serialVersionUID:J = -0x4c5348f609cd3524L


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 20
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getStackTraceCleanerProvider()Lorg/mockito/plugins/StackTraceCleanerProvider;

    move-result-object v0

    new-instance v1, Lorg/mockito/internal/exceptions/stacktrace/DefaultStackTraceCleaner;

    invoke-direct {v1}, Lorg/mockito/internal/exceptions/stacktrace/DefaultStackTraceCleaner;-><init>()V

    .line 21
    invoke-interface {v0, v1}, Lorg/mockito/plugins/StackTraceCleanerProvider;->getStackTraceCleaner(Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;)Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;->CLEANER:Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;

    .line 28
    :try_start_0
    const-string v0, "sun.misc.SharedSecrets"

    .line 29
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getJavaLangAccess"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 30
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 31
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;->JAVA_LANG_ACCESS:Ljava/lang/Object;

    .line 32
    const-string v0, "sun.misc.JavaLangAccess"

    .line 33
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getStackTraceElement"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v3, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 34
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;->GET_STACK_TRACE_ELEMENT:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 39
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter([Ljava/lang/StackTraceElement;Z)[Ljava/lang/StackTraceElement;
    .locals 5
    .param p1, "target"    # [Ljava/lang/StackTraceElement;
    .param p2, "keepTop"    # Z

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v0, "filtered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 52
    .local v3, "element":Ljava/lang/StackTraceElement;
    sget-object v4, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;->CLEANER:Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;

    invoke-interface {v4, v3}, Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;->isIn(Ljava/lang/StackTraceElement;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .end local v3    # "element":Ljava/lang/StackTraceElement;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    .line 57
    .local v1, "result":[Ljava/lang/StackTraceElement;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/StackTraceElement;

    return-object v2
.end method

.method public filterFirst(Ljava/lang/Throwable;Z)Ljava/lang/StackTraceElement;
    .locals 8
    .param p1, "target"    # Ljava/lang/Throwable;
    .param p2, "isInline"    # Z

    .line 76
    move v0, p2

    .line 78
    .local v0, "shouldSkip":Z
    sget-object v1, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;->GET_STACK_TRACE_ELEMENT:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 79
    const/4 v1, 0x0

    .line 88
    .local v1, "i":I
    :goto_0
    :try_start_0
    sget-object v3, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;->GET_STACK_TRACE_ELEMENT:Ljava/lang/reflect/Method;

    sget-object v4, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;->JAVA_LANG_ACCESS:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/StackTraceElement;

    .line 92
    .local v3, "stackTraceElement":Ljava/lang/StackTraceElement;
    sget-object v4, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;->CLEANER:Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;

    invoke-interface {v4, v3}, Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;->isIn(Ljava/lang/StackTraceElement;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    .line 93
    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    goto :goto_1

    .line 96
    :cond_0
    return-object v3

    .line 102
    .end local v3    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_1
    :goto_1
    nop

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :catch_0
    move-exception v3

    .line 101
    .local v3, "e":Ljava/lang/Exception;
    nop

    .line 109
    .end local v1    # "i":I
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v3, v1

    :goto_2
    if-ge v2, v3, :cond_5

    aget-object v4, v1, v2

    .line 110
    .local v4, "stackTraceElement":Ljava/lang/StackTraceElement;
    sget-object v5, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;->CLEANER:Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;

    invoke-interface {v5, v4}, Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;->isIn(Ljava/lang/StackTraceElement;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 111
    if-eqz v0, :cond_3

    .line 112
    const/4 v0, 0x0

    goto :goto_3

    .line 114
    :cond_3
    return-object v4

    .line 109
    .end local v4    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 118
    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method

.method public findSourceFile([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "target"    # [Ljava/lang/StackTraceElement;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 126
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 127
    .local v2, "e":Ljava/lang/StackTraceElement;
    sget-object v3, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;->CLEANER:Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;

    invoke-interface {v3, v2}, Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;->isIn(Ljava/lang/StackTraceElement;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 126
    .end local v2    # "e":Ljava/lang/StackTraceElement;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_1
    return-object p2
.end method
