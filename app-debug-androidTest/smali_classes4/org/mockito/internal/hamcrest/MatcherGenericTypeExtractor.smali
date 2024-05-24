.class public final Lorg/mockito/internal/hamcrest/MatcherGenericTypeExtractor;
.super Ljava/lang/Object;
.source "MatcherGenericTypeExtractor.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static genericTypeOfMatcher(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 21
    .local p0, "matcherClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lorg/hamcrest/BaseMatcher;

    const-class v1, Lorg/hamcrest/Matcher;

    invoke-static {p0, v0, v1}, Lorg/mockito/internal/util/reflection/GenericTypeExtractor;->genericTypeOf(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
