.class final Lorg/checkerframework/com/google/common/base/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/base/Platform$JdkPatternCompiler;
    }
.end annotation


# static fields
.field private static final GWT_RPC_PROPERTY_NAME:Ljava/lang/String; = "guava.gwt.emergency_reenable_rpc"

.field private static final logger:Ljava/util/logging/Logger;

.field private static final patternCompiler:Lorg/checkerframework/com/google/common/base/PatternCompiler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lorg/checkerframework/com/google/common/base/Platform;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/base/Platform;->logger:Ljava/util/logging/Logger;

    .line 37
    invoke-static {}, Lorg/checkerframework/com/google/common/base/Platform;->loadPatternCompiler()Lorg/checkerframework/com/google/common/base/PatternCompiler;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/base/Platform;->patternCompiler:Lorg/checkerframework/com/google/common/base/PatternCompiler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkGwtRpcEnabled()V
    .locals 4

    .line 104
    const-string v0, "true"

    const-string v1, "guava.gwt.emergency_reenable_rpc"

    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "https://stackoverflow.com/q/5189914/28465"

    const-string v3, "https://groups.google.com/d/msg/guava-announce/zHZTFg7YF3o/rQNnwdHeEwAJ"

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 106
    const-string v2, "We are removing GWT-RPC support for Guava types. You can temporarily reenable support by setting the system property %s to true. For more about system properties, see %s. For more about Guava\'s GWT-RPC support, see %s."

    invoke-static {v2, v1}, Lorg/checkerframework/com/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static compilePattern(Ljava/lang/String;)Lorg/checkerframework/com/google/common/base/CommonPattern;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;

    .line 73
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/checkerframework/com/google/common/base/Platform;->patternCompiler:Lorg/checkerframework/com/google/common/base/PatternCompiler;

    invoke-interface {v0, p0}, Lorg/checkerframework/com/google/common/base/PatternCompiler;->compile(Ljava/lang/String;)Lorg/checkerframework/com/google/common/base/CommonPattern;

    move-result-object v0

    return-object v0
.end method

.method static emptyToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 69
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Platform;->stringIsNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method static formatCompact4Digits(D)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # D

    .line 57
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.4g"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getEnumIfPresent(Ljava/lang/Class;Ljava/lang/String;)Lorg/checkerframework/com/google/common/base/Optional;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/google/common/base/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 52
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Enums;->getEnumConstants(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 53
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<+Ljava/lang/Enum<*>;>;"
    if-nez v0, :cond_0

    invoke-static {}, Lorg/checkerframework/com/google/common/base/Optional;->absent()Lorg/checkerframework/com/google/common/base/Optional;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/base/Optional;->of(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/Optional;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static loadPatternCompiler()Lorg/checkerframework/com/google/common/base/PatternCompiler;
    .locals 2

    .line 82
    new-instance v0, Lorg/checkerframework/com/google/common/base/Platform$JdkPatternCompiler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/base/Platform$JdkPatternCompiler;-><init>(Lorg/checkerframework/com/google/common/base/Platform$1;)V

    return-object v0
.end method

.method private static logPatternCompilerError(Ljava/util/ServiceConfigurationError;)V
    .locals 3
    .param p0, "e"    # Ljava/util/ServiceConfigurationError;

    .line 86
    sget-object v0, Lorg/checkerframework/com/google/common/base/Platform;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Error loading regex compiler, falling back to next option"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    return-void
.end method

.method static nullToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 65
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method static patternCompilerIsPcreLike()Z
    .locals 1

    .line 78
    sget-object v0, Lorg/checkerframework/com/google/common/base/Platform;->patternCompiler:Lorg/checkerframework/com/google/common/base/PatternCompiler;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/base/PatternCompiler;->isPcreLike()Z

    move-result v0

    return v0
.end method

.method static precomputeCharMatcher(Lorg/checkerframework/com/google/common/base/CharMatcher;)Lorg/checkerframework/com/google/common/base/CharMatcher;
    .locals 1
    .param p0, "matcher"    # Lorg/checkerframework/com/google/common/base/CharMatcher;

    .line 48
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/base/CharMatcher;->precomputedInternal()Lorg/checkerframework/com/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method static stringIsNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 61
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

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

.method static systemNanoTime()J
    .locals 2

    .line 44
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
