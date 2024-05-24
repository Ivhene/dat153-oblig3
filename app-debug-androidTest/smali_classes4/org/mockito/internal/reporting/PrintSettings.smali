.class public Lorg/mockito/internal/reporting/PrintSettings;
.super Ljava/lang/Object;
.source "PrintSettings.java"


# static fields
.field public static final MAX_LINE_LENGTH:I = 0x2d


# instance fields
.field private multiline:Z

.field private withTypeInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/reporting/PrintSettings;->withTypeInfo:Ljava/util/List;

    return-void
.end method

.method public static varargs verboseMatchers([Ljava/lang/Integer;)Lorg/mockito/internal/reporting/PrintSettings;
    .locals 1
    .param p0, "indexesOfMatchers"    # [Ljava/lang/Integer;

    .line 32
    new-instance v0, Lorg/mockito/internal/reporting/PrintSettings;

    invoke-direct {v0}, Lorg/mockito/internal/reporting/PrintSettings;-><init>()V

    .line 33
    .local v0, "settings":Lorg/mockito/internal/reporting/PrintSettings;
    invoke-virtual {v0, p0}, Lorg/mockito/internal/reporting/PrintSettings;->setMatchersToBeDescribedWithExtraTypeInfo([Ljava/lang/Integer;)V

    .line 34
    return-object v0
.end method


# virtual methods
.method public extraTypeInfoFor(I)Z
    .locals 2
    .param p1, "argumentIndex"    # I

    .line 38
    iget-object v0, p0, Lorg/mockito/internal/reporting/PrintSettings;->withTypeInfo:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMultiline()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lorg/mockito/internal/reporting/PrintSettings;->multiline:Z

    return v0
.end method

.method public print(Ljava/util/List;Lorg/mockito/invocation/Invocation;)Ljava/lang/String;
    .locals 5
    .param p2, "invocation"    # Lorg/mockito/invocation/Invocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher;",
            ">;",
            "Lorg/mockito/invocation/Invocation;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 46
    .local p1, "matchers":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/ArgumentMatcher;>;"
    new-instance v0, Lorg/mockito/internal/matchers/text/MatchersPrinter;

    invoke-direct {v0}, Lorg/mockito/internal/matchers/text/MatchersPrinter;-><init>()V

    .line 47
    .local v0, "matchersPrinter":Lorg/mockito/internal/matchers/text/MatchersPrinter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-interface {p2}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "qualifiedName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, p1, p0}, Lorg/mockito/internal/matchers/text/MatchersPrinter;->getArgumentsLine(Ljava/util/List;Lorg/mockito/internal/reporting/PrintSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "invocationString":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/mockito/internal/reporting/PrintSettings;->isMultiline()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x2d

    if-le v3, v4, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    return-object v2

    .line 51
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, p1, p0}, Lorg/mockito/internal/matchers/text/MatchersPrinter;->getArgumentsBlock(Ljava/util/List;Lorg/mockito/internal/reporting/PrintSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public print(Lorg/mockito/invocation/Invocation;)Ljava/lang/String;
    .locals 1
    .param p1, "invocation"    # Lorg/mockito/invocation/Invocation;

    .line 58
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getArgumentsAsMatchers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/mockito/internal/reporting/PrintSettings;->print(Ljava/util/List;Lorg/mockito/invocation/Invocation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public print(Lorg/mockito/invocation/MatchableInvocation;)Ljava/lang/String;
    .locals 2
    .param p1, "invocation"    # Lorg/mockito/invocation/MatchableInvocation;

    .line 62
    invoke-interface {p1}, Lorg/mockito/invocation/MatchableInvocation;->getMatchers()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lorg/mockito/invocation/MatchableInvocation;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/mockito/internal/reporting/PrintSettings;->print(Ljava/util/List;Lorg/mockito/invocation/Invocation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setMatchersToBeDescribedWithExtraTypeInfo([Ljava/lang/Integer;)V
    .locals 1
    .param p1, "indexesOfMatchers"    # [Ljava/lang/Integer;

    .line 42
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/reporting/PrintSettings;->withTypeInfo:Ljava/util/List;

    .line 43
    return-void
.end method

.method public setMultiline(Z)V
    .locals 0
    .param p1, "multiline"    # Z

    .line 24
    iput-boolean p1, p0, Lorg/mockito/internal/reporting/PrintSettings;->multiline:Z

    .line 25
    return-void
.end method
