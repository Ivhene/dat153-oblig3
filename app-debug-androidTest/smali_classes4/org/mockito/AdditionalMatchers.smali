.class public final Lorg/mockito/AdditionalMatchers;
.super Ljava/lang/Object;
.source "AdditionalMatchers.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static and(BB)B
    .locals 1
    .param p0, "first"    # B
    .param p1, "second"    # B

    .line 628
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportAnd()V

    .line 629
    const/4 v0, 0x0

    return v0
.end method

.method public static and(CC)C
    .locals 1
    .param p0, "first"    # C
    .param p1, "second"    # C

    .line 644
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportAnd()V

    .line 645
    const/4 v0, 0x0

    return v0
.end method

.method public static and(DD)D
    .locals 2
    .param p0, "first"    # D
    .param p2, "second"    # D

    .line 660
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportAnd()V

    .line 661
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static and(FF)F
    .locals 1
    .param p0, "first"    # F
    .param p1, "second"    # F

    .line 676
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportAnd()V

    .line 677
    const/4 v0, 0x0

    return v0
.end method

.method public static and(II)I
    .locals 1
    .param p0, "first"    # I
    .param p1, "second"    # I

    .line 692
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportAnd()V

    .line 693
    const/4 v0, 0x0

    return v0
.end method

.method public static and(JJ)J
    .locals 2
    .param p0, "first"    # J
    .param p2, "second"    # J

    .line 708
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportAnd()V

    .line 709
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static and(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 742
    .local p0, "first":Ljava/lang/Object;, "TT;"
    .local p1, "second":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportAnd()V

    .line 743
    const/4 v0, 0x0

    return-object v0
.end method

.method public static and(SS)S
    .locals 1
    .param p0, "first"    # S
    .param p1, "second"    # S

    .line 724
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportAnd()V

    .line 725
    const/4 v0, 0x0

    return v0
.end method

.method public static and(ZZ)Z
    .locals 1
    .param p0, "first"    # Z
    .param p1, "second"    # Z

    .line 612
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportAnd()V

    .line 613
    const/4 v0, 0x0

    return v0
.end method

.method public static aryEq([B)[B
    .locals 1
    .param p0, "value"    # [B

    .line 581
    new-instance v0, Lorg/mockito/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 582
    const/4 v0, 0x0

    return-object v0
.end method

.method public static aryEq([C)[C
    .locals 1
    .param p0, "value"    # [C

    .line 566
    new-instance v0, Lorg/mockito/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 567
    const/4 v0, 0x0

    return-object v0
.end method

.method public static aryEq([D)[D
    .locals 1
    .param p0, "value"    # [D

    .line 551
    new-instance v0, Lorg/mockito/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 552
    const/4 v0, 0x0

    return-object v0
.end method

.method public static aryEq([F)[F
    .locals 1
    .param p0, "value"    # [F

    .line 536
    new-instance v0, Lorg/mockito/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 537
    const/4 v0, 0x0

    return-object v0
.end method

.method public static aryEq([I)[I
    .locals 1
    .param p0, "value"    # [I

    .line 521
    new-instance v0, Lorg/mockito/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 522
    const/4 v0, 0x0

    return-object v0
.end method

.method public static aryEq([J)[J
    .locals 1
    .param p0, "value"    # [J

    .line 506
    new-instance v0, Lorg/mockito/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 507
    const/4 v0, 0x0

    return-object v0
.end method

.method public static aryEq([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 476
    .local p0, "value":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lorg/mockito/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 477
    const/4 v0, 0x0

    return-object v0
.end method

.method public static aryEq([S)[S
    .locals 1
    .param p0, "value"    # [S

    .line 491
    new-instance v0, Lorg/mockito/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 492
    const/4 v0, 0x0

    return-object v0
.end method

.method public static aryEq([Z)[Z
    .locals 1
    .param p0, "value"    # [Z

    .line 596
    new-instance v0, Lorg/mockito/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 597
    const/4 v0, 0x0

    return-object v0
.end method

.method public static cmpEq(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)TT;"
        }
    .end annotation

    .line 446
    .local p0, "value":Ljava/lang/Comparable;, "TT;"
    new-instance v0, Lorg/mockito/internal/matchers/CompareEqual;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/CompareEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 447
    const/4 v0, 0x0

    return-object v0
.end method

.method public static eq(DD)D
    .locals 3
    .param p0, "value"    # D
    .param p2, "delta"    # D

    .line 1033
    new-instance v0, Lorg/mockito/internal/matchers/EqualsWithDelta;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/EqualsWithDelta;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 1034
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static eq(FF)F
    .locals 3
    .param p0, "value"    # F
    .param p1, "delta"    # F

    .line 1050
    new-instance v0, Lorg/mockito/internal/matchers/EqualsWithDelta;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/EqualsWithDelta;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 1051
    const/4 v0, 0x0

    return v0
.end method

.method public static find(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "regex"    # Ljava/lang/String;

    .line 459
    new-instance v0, Lorg/mockito/internal/matchers/Find;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/Find;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 460
    const/4 v0, 0x0

    return-object v0
.end method

.method public static geq(B)B
    .locals 2
    .param p0, "value"    # B

    .line 67
    new-instance v0, Lorg/mockito/internal/matchers/GreaterOrEqual;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/GreaterOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public static geq(D)D
    .locals 2
    .param p0, "value"    # D

    .line 81
    new-instance v0, Lorg/mockito/internal/matchers/GreaterOrEqual;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/GreaterOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 82
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static geq(F)F
    .locals 2
    .param p0, "value"    # F

    .line 95
    new-instance v0, Lorg/mockito/internal/matchers/GreaterOrEqual;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/GreaterOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public static geq(I)I
    .locals 2
    .param p0, "value"    # I

    .line 109
    new-instance v0, Lorg/mockito/internal/matchers/GreaterOrEqual;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/GreaterOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public static geq(J)J
    .locals 2
    .param p0, "value"    # J

    .line 123
    new-instance v0, Lorg/mockito/internal/matchers/GreaterOrEqual;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/GreaterOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 124
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static geq(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)TT;"
        }
    .end annotation

    .line 53
    .local p0, "value":Ljava/lang/Comparable;, "TT;"
    new-instance v0, Lorg/mockito/internal/matchers/GreaterOrEqual;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/GreaterOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public static geq(S)S
    .locals 2
    .param p0, "value"    # S

    .line 137
    new-instance v0, Lorg/mockito/internal/matchers/GreaterOrEqual;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/GreaterOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public static gt(B)B
    .locals 2
    .param p0, "value"    # B

    .line 263
    new-instance v0, Lorg/mockito/internal/matchers/GreaterThan;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/GreaterThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public static gt(D)D
    .locals 2
    .param p0, "value"    # D

    .line 277
    new-instance v0, Lorg/mockito/internal/matchers/GreaterThan;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/GreaterThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 278
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static gt(F)F
    .locals 2
    .param p0, "value"    # F

    .line 291
    new-instance v0, Lorg/mockito/internal/matchers/GreaterThan;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/GreaterThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public static gt(I)I
    .locals 2
    .param p0, "value"    # I

    .line 305
    new-instance v0, Lorg/mockito/internal/matchers/GreaterThan;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/GreaterThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public static gt(J)J
    .locals 2
    .param p0, "value"    # J

    .line 319
    new-instance v0, Lorg/mockito/internal/matchers/GreaterThan;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/GreaterThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 320
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static gt(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)TT;"
        }
    .end annotation

    .line 249
    .local p0, "value":Ljava/lang/Comparable;, "TT;"
    new-instance v0, Lorg/mockito/internal/matchers/GreaterThan;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/GreaterThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method public static gt(S)S
    .locals 2
    .param p0, "value"    # S

    .line 333
    new-instance v0, Lorg/mockito/internal/matchers/GreaterThan;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/GreaterThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public static leq(B)B
    .locals 2
    .param p0, "value"    # B

    .line 165
    new-instance v0, Lorg/mockito/internal/matchers/LessOrEqual;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/LessOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public static leq(D)D
    .locals 2
    .param p0, "value"    # D

    .line 179
    new-instance v0, Lorg/mockito/internal/matchers/LessOrEqual;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/LessOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 180
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static leq(F)F
    .locals 2
    .param p0, "value"    # F

    .line 193
    new-instance v0, Lorg/mockito/internal/matchers/LessOrEqual;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/LessOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public static leq(I)I
    .locals 2
    .param p0, "value"    # I

    .line 207
    new-instance v0, Lorg/mockito/internal/matchers/LessOrEqual;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/LessOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public static leq(J)J
    .locals 2
    .param p0, "value"    # J

    .line 221
    new-instance v0, Lorg/mockito/internal/matchers/LessOrEqual;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/LessOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 222
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static leq(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)TT;"
        }
    .end annotation

    .line 151
    .local p0, "value":Ljava/lang/Comparable;, "TT;"
    new-instance v0, Lorg/mockito/internal/matchers/LessOrEqual;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/LessOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public static leq(S)S
    .locals 2
    .param p0, "value"    # S

    .line 235
    new-instance v0, Lorg/mockito/internal/matchers/LessOrEqual;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/LessOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public static lt(B)B
    .locals 2
    .param p0, "value"    # B

    .line 361
    new-instance v0, Lorg/mockito/internal/matchers/LessThan;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/LessThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public static lt(D)D
    .locals 2
    .param p0, "value"    # D

    .line 375
    new-instance v0, Lorg/mockito/internal/matchers/LessThan;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/LessThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 376
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static lt(F)F
    .locals 2
    .param p0, "value"    # F

    .line 389
    new-instance v0, Lorg/mockito/internal/matchers/LessThan;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/LessThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method public static lt(I)I
    .locals 2
    .param p0, "value"    # I

    .line 403
    new-instance v0, Lorg/mockito/internal/matchers/LessThan;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/LessThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method public static lt(J)J
    .locals 2
    .param p0, "value"    # J

    .line 417
    new-instance v0, Lorg/mockito/internal/matchers/LessThan;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/LessThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 418
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static lt(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)TT;"
        }
    .end annotation

    .line 347
    .local p0, "value":Ljava/lang/Comparable;, "TT;"
    new-instance v0, Lorg/mockito/internal/matchers/LessThan;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/LessThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 348
    const/4 v0, 0x0

    return-object v0
.end method

.method public static lt(S)S
    .locals 2
    .param p0, "value"    # S

    .line 431
    new-instance v0, Lorg/mockito/internal/matchers/LessThan;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/LessThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method public static not(B)B
    .locals 1
    .param p0, "first"    # B

    .line 1016
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportNot()V

    .line 1017
    const/4 v0, 0x0

    return v0
.end method

.method public static not(C)C
    .locals 1
    .param p0, "first"    # C

    .line 988
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportNot()V

    .line 989
    const/4 v0, 0x0

    return v0
.end method

.method public static not(D)D
    .locals 2
    .param p0, "first"    # D

    .line 974
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportNot()V

    .line 975
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static not(F)F
    .locals 1
    .param p0, "first"    # F

    .line 960
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportNot()V

    .line 961
    const/4 v0, 0x0

    return v0
.end method

.method public static not(I)I
    .locals 1
    .param p0, "first"    # I

    .line 932
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportNot()V

    .line 933
    const/4 v0, 0x0

    return v0
.end method

.method public static not(J)J
    .locals 2
    .param p0, "first"    # J

    .line 946
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportNot()V

    .line 947
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static not(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 904
    .local p0, "first":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportNot()V

    .line 905
    const/4 v0, 0x0

    return-object v0
.end method

.method public static not(S)S
    .locals 1
    .param p0, "first"    # S

    .line 918
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportNot()V

    .line 919
    const/4 v0, 0x0

    return v0
.end method

.method public static not(Z)Z
    .locals 1
    .param p0, "first"    # Z

    .line 1002
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportNot()V

    .line 1003
    const/4 v0, 0x0

    return v0
.end method

.method public static or(BB)B
    .locals 1
    .param p0, "first"    # B
    .param p1, "second"    # B

    .line 888
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportOr()V

    .line 889
    const/4 v0, 0x0

    return v0
.end method

.method public static or(CC)C
    .locals 1
    .param p0, "first"    # C
    .param p1, "second"    # C

    .line 872
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportOr()V

    .line 873
    const/4 v0, 0x0

    return v0
.end method

.method public static or(DD)D
    .locals 2
    .param p0, "first"    # D
    .param p2, "second"    # D

    .line 856
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportOr()V

    .line 857
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static or(FF)F
    .locals 1
    .param p0, "first"    # F
    .param p1, "second"    # F

    .line 840
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportOr()V

    .line 841
    const/4 v0, 0x0

    return v0
.end method

.method public static or(II)I
    .locals 1
    .param p0, "first"    # I
    .param p1, "second"    # I

    .line 824
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportOr()V

    .line 825
    const/4 v0, 0x0

    return v0
.end method

.method public static or(JJ)J
    .locals 2
    .param p0, "first"    # J
    .param p2, "second"    # J

    .line 808
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportOr()V

    .line 809
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static or(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 776
    .local p0, "first":Ljava/lang/Object;, "TT;"
    .local p1, "second":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportOr()V

    .line 777
    const/4 v0, 0x0

    return-object v0
.end method

.method public static or(SS)S
    .locals 1
    .param p0, "first"    # S
    .param p1, "second"    # S

    .line 792
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportOr()V

    .line 793
    const/4 v0, 0x0

    return v0
.end method

.method public static or(ZZ)Z
    .locals 1
    .param p0, "first"    # Z
    .param p1, "second"    # Z

    .line 758
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportOr()V

    .line 759
    const/4 v0, 0x0

    return v0
.end method

.method private static reportMatcher(Lorg/mockito/ArgumentMatcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;)V"
        }
    .end annotation

    .line 1055
    .local p0, "matcher":Lorg/mockito/ArgumentMatcher;, "Lorg/mockito/ArgumentMatcher<*>;"
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 1056
    return-void
.end method
