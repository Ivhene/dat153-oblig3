.class public Lorg/mockito/internal/matchers/text/MatchersPrinter;
.super Ljava/lang/Object;
.source "MatchersPrinter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyPrintSettings(Ljava/util/List;Lorg/mockito/internal/reporting/PrintSettings;)Ljava/util/Iterator;
    .locals 6
    .param p2, "printSettings"    # Lorg/mockito/internal/reporting/PrintSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher;",
            ">;",
            "Lorg/mockito/internal/reporting/PrintSettings;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/mockito/internal/matchers/text/FormattedText;",
            ">;"
        }
    .end annotation

    .line 30
    .local p1, "matchers":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/ArgumentMatcher;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 31
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/internal/matchers/text/FormattedText;>;"
    const/4 v1, 0x0

    .line 32
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mockito/ArgumentMatcher;

    .line 33
    .local v3, "matcher":Lorg/mockito/ArgumentMatcher;
    instance-of v4, v3, Lorg/mockito/internal/matchers/ContainsExtraTypeInfo;

    if-eqz v4, :cond_0

    invoke-virtual {p2, v1}, Lorg/mockito/internal/reporting/PrintSettings;->extraTypeInfoFor(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    new-instance v4, Lorg/mockito/internal/matchers/text/FormattedText;

    move-object v5, v3

    check-cast v5, Lorg/mockito/internal/matchers/ContainsExtraTypeInfo;

    invoke-interface {v5}, Lorg/mockito/internal/matchers/ContainsExtraTypeInfo;->toStringWithType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/mockito/internal/matchers/text/FormattedText;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 36
    :cond_0
    new-instance v4, Lorg/mockito/internal/matchers/text/FormattedText;

    invoke-static {v3}, Lorg/mockito/internal/matchers/text/MatcherToString;->toString(Lorg/mockito/ArgumentMatcher;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/mockito/internal/matchers/text/FormattedText;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    :goto_1
    nop

    .end local v3    # "matcher":Lorg/mockito/ArgumentMatcher;
    add-int/lit8 v1, v1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getArgumentsBlock(Ljava/util/List;Lorg/mockito/internal/reporting/PrintSettings;)Ljava/lang/String;
    .locals 4
    .param p2, "printSettings"    # Lorg/mockito/internal/reporting/PrintSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher;",
            ">;",
            "Lorg/mockito/internal/reporting/PrintSettings;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 24
    .local p1, "matchers":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/ArgumentMatcher;>;"
    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/matchers/text/MatchersPrinter;->applyPrintSettings(Ljava/util/List;Lorg/mockito/internal/reporting/PrintSettings;)Ljava/util/Iterator;

    move-result-object v0

    .line 25
    .local v0, "args":Ljava/util/Iterator;
    const-string v1, ",\n    "

    const-string v2, "\n);"

    const-string v3, "(\n    "

    invoke-static {v3, v1, v2, v0}, Lorg/mockito/internal/matchers/text/ValuePrinter;->printValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getArgumentsLine(Ljava/util/List;Lorg/mockito/internal/reporting/PrintSettings;)Ljava/lang/String;
    .locals 4
    .param p2, "printSettings"    # Lorg/mockito/internal/reporting/PrintSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher;",
            ">;",
            "Lorg/mockito/internal/reporting/PrintSettings;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 19
    .local p1, "matchers":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/ArgumentMatcher;>;"
    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/matchers/text/MatchersPrinter;->applyPrintSettings(Ljava/util/List;Lorg/mockito/internal/reporting/PrintSettings;)Ljava/util/Iterator;

    move-result-object v0

    .line 20
    .local v0, "args":Ljava/util/Iterator;
    const-string v1, ", "

    const-string v2, ");"

    const-string v3, "("

    invoke-static {v3, v1, v2, v0}, Lorg/mockito/internal/matchers/text/ValuePrinter;->printValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
