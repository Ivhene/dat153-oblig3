.class public Lorg/mockito/ArgumentMatchers;
.super Ljava/lang/Object;
.source "ArgumentMatchers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static any()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 146
    invoke-static {}, Lorg/mockito/ArgumentMatchers;->anyObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static any(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 209
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf$VarArgAware;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<any "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/mockito/internal/matchers/InstanceOf$VarArgAware;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 210
    invoke-static {p0}, Lorg/mockito/internal/util/Primitives;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static anyBoolean()Z
    .locals 3

    .line 284
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/lang/Boolean;

    const-string v2, "<any boolean>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public static anyByte()B
    .locals 3

    .line 307
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/lang/Byte;

    const-string v2, "<any byte>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public static anyChar()C
    .locals 3

    .line 330
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/lang/Character;

    const-string v2, "<any char>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public static anyCollection()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 674
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/util/Collection;

    const-string v2, "<any collection>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 675
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static anyCollectionOf(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 712
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lorg/mockito/ArgumentMatchers;->anyCollection()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static anyDouble()D
    .locals 3

    .line 422
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/lang/Double;

    const-string v2, "<any double>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 423
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static anyFloat()F
    .locals 3

    .line 399
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/lang/Float;

    const-string v2, "<any float>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method public static anyInt()I
    .locals 3

    .line 353
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "<any integer>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public static anyIterable()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 736
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/lang/Iterable;

    const-string v2, "<any iterable>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 737
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static anyIterableOf(Ljava/lang/Class;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 775
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lorg/mockito/ArgumentMatchers;->anyIterable()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public static anyList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 492
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/util/List;

    const-string v2, "<any List>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static anyListOf(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 528
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lorg/mockito/ArgumentMatchers;->anyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static anyLong()J
    .locals 3

    .line 376
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/lang/Long;

    const-string v2, "<any long>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 377
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static anyMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 612
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/util/Map;

    const-string v2, "<any map>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 613
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method public static anyMapOf(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 651
    .local p0, "keyClazz":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p1, "valueClazz":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-static {}, Lorg/mockito/ArgumentMatchers;->anyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static anyObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    sget-object v0, Lorg/mockito/internal/matchers/Any;->ANY:Lorg/mockito/internal/matchers/Any;

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method public static anySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 551
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/util/Set;

    const-string v2, "<any set>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 552
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    return-object v0
.end method

.method public static anySetOf(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 589
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lorg/mockito/ArgumentMatchers;->anySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static anyShort()S
    .locals 3

    .line 445
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/lang/Short;

    const-string v2, "<any short>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 446
    const/4 v0, 0x0

    return v0
.end method

.method public static anyString()Ljava/lang/String;
    .locals 3

    .line 468
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/lang/String;

    const-string v2, "<any string>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 469
    const-string v0, ""

    return-object v0
.end method

.method public static anyVararg()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 261
    invoke-static {}, Lorg/mockito/ArgumentMatchers;->any()Ljava/lang/Object;

    .line 262
    const/4 v0, 0x0

    return-object v0
.end method

.method public static argThat(Lorg/mockito/ArgumentMatcher;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/ArgumentMatcher<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1203
    .local p0, "matcher":Lorg/mockito/ArgumentMatcher;, "Lorg/mockito/ArgumentMatcher<TT;>;"
    invoke-static {p0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 1204
    const/4 v0, 0x0

    return-object v0
.end method

.method public static booleanThat(Lorg/mockito/ArgumentMatcher;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1233
    .local p0, "matcher":Lorg/mockito/ArgumentMatcher;, "Lorg/mockito/ArgumentMatcher<Ljava/lang/Boolean;>;"
    invoke-static {p0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 1234
    const/4 v0, 0x0

    return v0
.end method

.method public static byteThat(Lorg/mockito/ArgumentMatcher;)B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "Ljava/lang/Byte;",
            ">;)B"
        }
    .end annotation

    .line 1248
    .local p0, "matcher":Lorg/mockito/ArgumentMatcher;, "Lorg/mockito/ArgumentMatcher<Ljava/lang/Byte;>;"
    invoke-static {p0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 1249
    const/4 v0, 0x0

    return v0
.end method

.method public static charThat(Lorg/mockito/ArgumentMatcher;)C
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "Ljava/lang/Character;",
            ">;)C"
        }
    .end annotation

    .line 1218
    .local p0, "matcher":Lorg/mockito/ArgumentMatcher;, "Lorg/mockito/ArgumentMatcher<Ljava/lang/Character;>;"
    invoke-static {p0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 1219
    const/4 v0, 0x0

    return v0
.end method

.method public static contains(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "substring"    # Ljava/lang/String;

    .line 1111
    new-instance v0, Lorg/mockito/internal/matchers/Contains;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/Contains;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 1112
    const-string v0, ""

    return-object v0
.end method

.method public static doubleThat(Lorg/mockito/ArgumentMatcher;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    .line 1323
    .local p0, "matcher":Lorg/mockito/ArgumentMatcher;, "Lorg/mockito/ArgumentMatcher<Ljava/lang/Double;>;"
    invoke-static {p0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 1324
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static endsWith(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "suffix"    # Ljava/lang/String;

    .line 1154
    new-instance v0, Lorg/mockito/internal/matchers/EndsWith;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/EndsWith;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 1155
    const-string v0, ""

    return-object v0
.end method

.method public static eq(B)B
    .locals 2
    .param p0, "value"    # B

    .line 804
    new-instance v0, Lorg/mockito/internal/matchers/Equals;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 805
    const/4 v0, 0x0

    return v0
.end method

.method public static eq(C)C
    .locals 2
    .param p0, "value"    # C

    .line 819
    new-instance v0, Lorg/mockito/internal/matchers/Equals;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 820
    const/4 v0, 0x0

    return v0
.end method

.method public static eq(D)D
    .locals 2
    .param p0, "value"    # D

    .line 834
    new-instance v0, Lorg/mockito/internal/matchers/Equals;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 835
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static eq(F)F
    .locals 2
    .param p0, "value"    # F

    .line 849
    new-instance v0, Lorg/mockito/internal/matchers/Equals;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 850
    const/4 v0, 0x0

    return v0
.end method

.method public static eq(I)I
    .locals 2
    .param p0, "value"    # I

    .line 864
    new-instance v0, Lorg/mockito/internal/matchers/Equals;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 865
    const/4 v0, 0x0

    return v0
.end method

.method public static eq(J)J
    .locals 2
    .param p0, "value"    # J

    .line 879
    new-instance v0, Lorg/mockito/internal/matchers/Equals;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 880
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static eq(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 907
    .local p0, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/mockito/internal/matchers/Equals;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 908
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 909
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/Primitives;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static eq(S)S
    .locals 2
    .param p0, "value"    # S

    .line 892
    new-instance v0, Lorg/mockito/internal/matchers/Equals;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 893
    const/4 v0, 0x0

    return v0
.end method

.method public static eq(Z)Z
    .locals 2
    .param p0, "value"    # Z

    .line 789
    new-instance v0, Lorg/mockito/internal/matchers/Equals;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 790
    const/4 v0, 0x0

    return v0
.end method

.method public static floatThat(Lorg/mockito/ArgumentMatcher;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 1308
    .local p0, "matcher":Lorg/mockito/ArgumentMatcher;, "Lorg/mockito/ArgumentMatcher<Ljava/lang/Float;>;"
    invoke-static {p0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 1309
    const/4 v0, 0x0

    return v0
.end method

.method public static intThat(Lorg/mockito/ArgumentMatcher;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1278
    .local p0, "matcher":Lorg/mockito/ArgumentMatcher;, "Lorg/mockito/ArgumentMatcher<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 1279
    const/4 v0, 0x0

    return v0
.end method

.method public static isA(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 224
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 225
    invoke-static {p0}, Lorg/mockito/internal/util/Primitives;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static isNotNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 1062
    invoke-static {}, Lorg/mockito/ArgumentMatchers;->notNull()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static isNotNull(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1084
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lorg/mockito/ArgumentMatchers;->notNull(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static isNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 973
    sget-object v0, Lorg/mockito/internal/matchers/Null;->NULL:Lorg/mockito/internal/matchers/Null;

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 974
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isNull(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 998
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lorg/mockito/ArgumentMatchers;->isNull()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static longThat(Lorg/mockito/ArgumentMatcher;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 1293
    .local p0, "matcher":Lorg/mockito/ArgumentMatcher;, "Lorg/mockito/ArgumentMatcher<Ljava/lang/Long;>;"
    invoke-static {p0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 1294
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static matches(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "regex"    # Ljava/lang/String;

    .line 1126
    new-instance v0, Lorg/mockito/internal/matchers/Matches;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/Matches;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 1127
    const-string v0, ""

    return-object v0
.end method

.method public static matches(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 1
    .param p0, "pattern"    # Ljava/util/regex/Pattern;

    .line 1141
    new-instance v0, Lorg/mockito/internal/matchers/Matches;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/Matches;-><init>(Ljava/util/regex/Pattern;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 1142
    const-string v0, ""

    return-object v0
.end method

.method public static notNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 1015
    sget-object v0, Lorg/mockito/internal/matchers/NotNull;->NOT_NULL:Lorg/mockito/internal/matchers/NotNull;

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 1016
    const/4 v0, 0x0

    return-object v0
.end method

.method public static notNull(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1042
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lorg/mockito/ArgumentMatchers;->notNull()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static nullable(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1098
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lorg/mockito/ArgumentMatchers;->isNull()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Lorg/mockito/ArgumentMatchers;->isA(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mockito/AdditionalMatchers;->or(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    invoke-static {p0}, Lorg/mockito/internal/util/Primitives;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs refEq(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "excludeFields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 937
    .local p0, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/mockito/internal/matchers/apachecommons/ReflectionEquals;

    invoke-direct {v0, p0, p1}, Lorg/mockito/internal/matchers/apachecommons/ReflectionEquals;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 938
    const/4 v0, 0x0

    return-object v0
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

    .line 1328
    .local p0, "matcher":Lorg/mockito/ArgumentMatcher;, "Lorg/mockito/ArgumentMatcher<*>;"
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 1329
    return-void
.end method

.method public static same(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 953
    .local p0, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/mockito/internal/matchers/Same;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/Same;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 954
    if-nez p0, :cond_0

    .line 955
    const/4 v0, 0x0

    return-object v0

    .line 957
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/Primitives;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static shortThat(Lorg/mockito/ArgumentMatcher;)S
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "Ljava/lang/Short;",
            ">;)S"
        }
    .end annotation

    .line 1263
    .local p0, "matcher":Lorg/mockito/ArgumentMatcher;, "Lorg/mockito/ArgumentMatcher<Ljava/lang/Short;>;"
    invoke-static {p0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 1264
    const/4 v0, 0x0

    return v0
.end method

.method public static startsWith(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;

    .line 1167
    new-instance v0, Lorg/mockito/internal/matchers/StartsWith;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/StartsWith;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 1168
    const-string v0, ""

    return-object v0
.end method
