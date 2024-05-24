.class Lorg/mockito/internal/junit/StubbingArgMismatches;
.super Ljava/lang/Object;
.source "StubbingArgMismatches.java"


# instance fields
.field final mismatches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/mockito/invocation/Invocation;",
            "Ljava/util/Set<",
            "Lorg/mockito/invocation/Invocation;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/junit/StubbingArgMismatches;->mismatches:Ljava/util/Map;

    return-void
.end method

.method static synthetic lambda$add$0(Lorg/mockito/invocation/Invocation;)Ljava/util/Set;
    .locals 1
    .param p0, "k"    # Lorg/mockito/invocation/Invocation;

    .line 25
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method


# virtual methods
.method public add(Lorg/mockito/invocation/Invocation;Lorg/mockito/invocation/Invocation;)V
    .locals 2
    .param p1, "invocation"    # Lorg/mockito/invocation/Invocation;
    .param p2, "stubbing"    # Lorg/mockito/invocation/Invocation;

    .line 23
    iget-object v0, p0, Lorg/mockito/internal/junit/StubbingArgMismatches;->mismatches:Ljava/util/Map;

    new-instance v1, Lorg/mockito/internal/junit/StubbingArgMismatches$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/mockito/internal/junit/StubbingArgMismatches$$ExternalSyntheticLambda0;-><init>()V

    .line 24
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 26
    .local v0, "matchingInvocations":Ljava/util/Set;, "Ljava/util/Set<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public format(Ljava/lang/String;Lorg/mockito/plugins/MockitoLogger;)V
    .locals 8
    .param p1, "testName"    # Ljava/lang/String;
    .param p2, "logger"    # Lorg/mockito/plugins/MockitoLogger;

    .line 30
    iget-object v0, p0, Lorg/mockito/internal/junit/StubbingArgMismatches;->mismatches:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    return-void

    .line 34
    :cond_0
    new-instance v0, Lorg/mockito/internal/junit/StubbingHint;

    invoke-direct {v0, p1}, Lorg/mockito/internal/junit/StubbingHint;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, "hint":Lorg/mockito/internal/junit/StubbingHint;
    const/4 v1, 0x1

    .line 36
    .local v1, "x":I
    iget-object v2, p0, Lorg/mockito/internal/junit/StubbingArgMismatches;->mismatches:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 37
    .local v3, "m":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/mockito/invocation/Invocation;Ljava/util/Set<Lorg/mockito/invocation/Invocation;>;>;"
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "x":I
    .local v4, "x":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mockito/invocation/Invocation;

    invoke-interface {v5}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v5

    const-string v6, ". Unused... "

    filled-new-array {v1, v6, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mockito/internal/junit/StubbingHint;->appendLine([Ljava/lang/Object;)V

    .line 38
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mockito/invocation/Invocation;

    .line 39
    .local v5, "invocation":Lorg/mockito/invocation/Invocation;
    const-string v6, " ...args ok? "

    invoke-interface {v5}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/mockito/internal/junit/StubbingHint;->appendLine([Ljava/lang/Object;)V

    .line 40
    .end local v5    # "invocation":Lorg/mockito/invocation/Invocation;
    goto :goto_1

    .line 41
    .end local v3    # "m":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/mockito/invocation/Invocation;Ljava/util/Set<Lorg/mockito/invocation/Invocation;>;>;"
    :cond_1
    move v1, v4

    goto :goto_0

    .line 43
    .end local v4    # "x":I
    .restart local v1    # "x":I
    :cond_2
    invoke-virtual {v0}, Lorg/mockito/internal/junit/StubbingHint;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lorg/mockito/plugins/MockitoLogger;->log(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public size()I
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/mockito/internal/junit/StubbingArgMismatches;->mismatches:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/junit/StubbingArgMismatches;->mismatches:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
