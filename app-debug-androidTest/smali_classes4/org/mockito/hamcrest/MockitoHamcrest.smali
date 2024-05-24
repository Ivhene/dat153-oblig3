.class public final Lorg/mockito/hamcrest/MockitoHamcrest;
.super Ljava/lang/Object;
.source "MockitoHamcrest.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static argThat(Lorg/hamcrest/Matcher;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 61
    .local p0, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    invoke-static {p0}, Lorg/mockito/hamcrest/MockitoHamcrest;->reportMatcher(Lorg/hamcrest/Matcher;)V

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/hamcrest/MatcherGenericTypeExtractor;->genericTypeOfMatcher(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/Primitives;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static booleanThat(Lorg/hamcrest/Matcher;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 89
    .local p0, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<Ljava/lang/Boolean;>;"
    invoke-static {p0}, Lorg/mockito/hamcrest/MockitoHamcrest;->reportMatcher(Lorg/hamcrest/Matcher;)V

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public static byteThat(Lorg/hamcrest/Matcher;)B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Byte;",
            ">;)B"
        }
    .end annotation

    .line 103
    .local p0, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<Ljava/lang/Byte;>;"
    invoke-static {p0}, Lorg/mockito/hamcrest/MockitoHamcrest;->reportMatcher(Lorg/hamcrest/Matcher;)V

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public static charThat(Lorg/hamcrest/Matcher;)C
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Character;",
            ">;)C"
        }
    .end annotation

    .line 75
    .local p0, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<Ljava/lang/Character;>;"
    invoke-static {p0}, Lorg/mockito/hamcrest/MockitoHamcrest;->reportMatcher(Lorg/hamcrest/Matcher;)V

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public static doubleThat(Lorg/hamcrest/Matcher;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    .line 173
    .local p0, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<Ljava/lang/Double;>;"
    invoke-static {p0}, Lorg/mockito/hamcrest/MockitoHamcrest;->reportMatcher(Lorg/hamcrest/Matcher;)V

    .line 174
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static floatThat(Lorg/hamcrest/Matcher;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 159
    .local p0, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<Ljava/lang/Float;>;"
    invoke-static {p0}, Lorg/mockito/hamcrest/MockitoHamcrest;->reportMatcher(Lorg/hamcrest/Matcher;)V

    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public static intThat(Lorg/hamcrest/Matcher;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 131
    .local p0, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lorg/mockito/hamcrest/MockitoHamcrest;->reportMatcher(Lorg/hamcrest/Matcher;)V

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public static longThat(Lorg/hamcrest/Matcher;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 145
    .local p0, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<Ljava/lang/Long;>;"
    invoke-static {p0}, Lorg/mockito/hamcrest/MockitoHamcrest;->reportMatcher(Lorg/hamcrest/Matcher;)V

    .line 146
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static reportMatcher(Lorg/hamcrest/Matcher;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;)V"
        }
    .end annotation

    .line 178
    .local p0, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    .line 179
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    new-instance v1, Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher;

    invoke-direct {v1, p0}, Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher;-><init>(Lorg/hamcrest/Matcher;)V

    .line 180
    invoke-interface {v0, v1}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 181
    return-void
.end method

.method public static shortThat(Lorg/hamcrest/Matcher;)S
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Short;",
            ">;)S"
        }
    .end annotation

    .line 117
    .local p0, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<Ljava/lang/Short;>;"
    invoke-static {p0}, Lorg/mockito/hamcrest/MockitoHamcrest;->reportMatcher(Lorg/hamcrest/Matcher;)V

    .line 118
    const/4 v0, 0x0

    return v0
.end method
