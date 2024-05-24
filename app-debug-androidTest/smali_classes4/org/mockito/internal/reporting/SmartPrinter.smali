.class public Lorg/mockito/internal/reporting/SmartPrinter;
.super Ljava/lang/Object;
.source "SmartPrinter.java"


# instance fields
.field private final actuals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final wanted:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Lorg/mockito/invocation/MatchableInvocation;Ljava/util/List;[Ljava/lang/Integer;)V
    .locals 5
    .param p1, "wanted"    # Lorg/mockito/invocation/MatchableInvocation;
    .param p3, "indexesOfMatchersToBeDescribedWithExtraTypeInfo"    # [Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/MatchableInvocation;",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;[",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 37
    .local p2, "allActualInvocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/mockito/internal/reporting/PrintSettings;

    invoke-direct {v0}, Lorg/mockito/internal/reporting/PrintSettings;-><init>()V

    .line 39
    .local v0, "printSettings":Lorg/mockito/internal/reporting/PrintSettings;
    invoke-static {p1, p2}, Lorg/mockito/internal/reporting/SmartPrinter;->isMultiLine(Lorg/mockito/invocation/MatchableInvocation;Ljava/util/List;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mockito/internal/reporting/PrintSettings;->setMultiline(Z)V

    .line 40
    invoke-virtual {v0, p3}, Lorg/mockito/internal/reporting/PrintSettings;->setMatchersToBeDescribedWithExtraTypeInfo([Ljava/lang/Integer;)V

    .line 43
    invoke-virtual {v0, p1}, Lorg/mockito/internal/reporting/PrintSettings;->print(Lorg/mockito/invocation/MatchableInvocation;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mockito/internal/reporting/SmartPrinter;->wanted:Ljava/lang/String;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v1, "actuals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mockito/invocation/Invocation;

    .line 47
    .local v3, "actual":Lorg/mockito/invocation/Invocation;
    invoke-virtual {v0, v3}, Lorg/mockito/internal/reporting/PrintSettings;->print(Lorg/mockito/invocation/Invocation;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .end local v3    # "actual":Lorg/mockito/invocation/Invocation;
    goto :goto_0

    .line 49
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/mockito/internal/reporting/SmartPrinter;->actuals:Ljava/util/List;

    .line 50
    return-void
.end method

.method public varargs constructor <init>(Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/invocation/Invocation;[Ljava/lang/Integer;)V
    .locals 1
    .param p1, "wanted"    # Lorg/mockito/invocation/MatchableInvocation;
    .param p2, "actual"    # Lorg/mockito/invocation/Invocation;
    .param p3, "indexesOfMatchersToBeDescribedWithExtraTypeInfo"    # [Ljava/lang/Integer;

    .line 28
    nop

    .line 30
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 28
    invoke-direct {p0, p1, v0, p3}, Lorg/mockito/internal/reporting/SmartPrinter;-><init>(Lorg/mockito/invocation/MatchableInvocation;Ljava/util/List;[Ljava/lang/Integer;)V

    .line 32
    return-void
.end method

.method private static isMultiLine(Lorg/mockito/invocation/MatchableInvocation;Ljava/util/List;)Z
    .locals 6
    .param p0, "wanted"    # Lorg/mockito/invocation/MatchableInvocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/MatchableInvocation;",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;)Z"
        }
    .end annotation

    .line 62
    .local p1, "allActualInvocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 63
    .local v0, "isWantedMultiline":Z
    const/4 v2, 0x0

    .line 64
    .local v2, "isAnyActualMultiline":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mockito/invocation/Invocation;

    .line 65
    .local v4, "invocation":Lorg/mockito/invocation/Invocation;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 66
    .end local v4    # "invocation":Lorg/mockito/invocation/Invocation;
    goto :goto_0

    .line 67
    :cond_0
    if-nez v0, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    return v1
.end method


# virtual methods
.method public getActuals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/mockito/internal/reporting/SmartPrinter;->actuals:Ljava/util/List;

    return-object v0
.end method

.method public getWanted()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/mockito/internal/reporting/SmartPrinter;->wanted:Ljava/lang/String;

    return-object v0
.end method
