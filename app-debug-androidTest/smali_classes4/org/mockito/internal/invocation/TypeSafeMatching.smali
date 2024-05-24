.class public Lorg/mockito/internal/invocation/TypeSafeMatching;
.super Ljava/lang/Object;
.source "TypeSafeMatching.java"

# interfaces
.implements Lorg/mockito/internal/invocation/ArgumentMatcherAction;


# static fields
.field private static final TYPE_SAFE_MATCHING_ACTION:Lorg/mockito/internal/invocation/ArgumentMatcherAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lorg/mockito/internal/invocation/TypeSafeMatching;

    invoke-direct {v0}, Lorg/mockito/internal/invocation/TypeSafeMatching;-><init>()V

    sput-object v0, Lorg/mockito/internal/invocation/TypeSafeMatching;->TYPE_SAFE_MATCHING_ACTION:Lorg/mockito/internal/invocation/ArgumentMatcherAction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getArgumentType(Lorg/mockito/ArgumentMatcher;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 47
    .local p0, "argumentMatcher":Lorg/mockito/ArgumentMatcher;, "Lorg/mockito/ArgumentMatcher<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 49
    .local v0, "methods":[Ljava/lang/reflect/Method;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 50
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-static {v4}, Lorg/mockito/internal/invocation/TypeSafeMatching;->isMatchesMethod(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    aget-object v1, v1, v2

    return-object v1

    .line 49
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    :cond_1
    new-instance v1, Ljava/lang/NoSuchMethodError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Method \'matches(T)\' not found in ArgumentMatcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " !\r\n Please file a bug with this stack trace at: https://github.com/mockito/mockito/issues/new "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static isCompatible(Lorg/mockito/ArgumentMatcher;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "argument"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 33
    .local p0, "argumentMatcher":Lorg/mockito/ArgumentMatcher;, "Lorg/mockito/ArgumentMatcher<*>;"
    if-nez p1, :cond_0

    .line 34
    const/4 v0, 0x1

    return v0

    .line 37
    :cond_0
    invoke-static {p0}, Lorg/mockito/internal/invocation/TypeSafeMatching;->getArgumentType(Lorg/mockito/ArgumentMatcher;)Ljava/lang/Class;

    move-result-object v0

    .line 39
    .local v0, "expectedArgumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static isMatchesMethod(Ljava/lang/reflect/Method;)Z
    .locals 3
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 65
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 66
    return v2

    .line 68
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    return v2

    .line 71
    :cond_1
    const-string v0, "matches"

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static matchesTypeSafe()Lorg/mockito/internal/invocation/ArgumentMatcherAction;
    .locals 1

    .line 19
    sget-object v0, Lorg/mockito/internal/invocation/TypeSafeMatching;->TYPE_SAFE_MATCHING_ACTION:Lorg/mockito/internal/invocation/ArgumentMatcherAction;

    return-object v0
.end method


# virtual methods
.method public apply(Lorg/mockito/ArgumentMatcher;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "matcher"    # Lorg/mockito/ArgumentMatcher;
    .param p2, "argument"    # Ljava/lang/Object;

    .line 24
    invoke-static {p1, p2}, Lorg/mockito/internal/invocation/TypeSafeMatching;->isCompatible(Lorg/mockito/ArgumentMatcher;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lorg/mockito/ArgumentMatcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
