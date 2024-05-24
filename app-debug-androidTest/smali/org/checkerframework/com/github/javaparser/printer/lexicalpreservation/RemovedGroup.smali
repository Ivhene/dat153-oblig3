.class final Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;
.super Ljava/lang/Object;
.source "RemovedGroup.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;",
        ">;"
    }
.end annotation


# instance fields
.field private final firstElementIndex:Ljava/lang/Integer;

.field private final hasOnlyWhitespaceBehindFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final hasOnlyWhitespaceInFrontFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final hasOnlyWhitespaceJavaTokenBehindFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lorg/checkerframework/com/github/javaparser/JavaToken;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final hasOnlyWhitespaceJavaTokenInFrontFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lorg/checkerframework/com/github/javaparser/JavaToken;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isProcessed:Z

.field private final removedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Ljava/util/List;)V
    .locals 2
    .param p1, "firstElementIndex"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "firstElementIndex",
            "removedList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p2, "removedList":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->isProcessed:Z

    .line 127
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$$ExternalSyntheticLambda2;-><init>(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;)V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhitespaceJavaTokenInFrontFunction:Ljava/util/function/Function;

    .line 128
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$$ExternalSyntheticLambda3;-><init>(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;)V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhitespaceJavaTokenBehindFunction:Ljava/util/function/Function;

    .line 129
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$$ExternalSyntheticLambda4;-><init>(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;)V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhitespaceInFrontFunction:Ljava/util/function/Function;

    .line 130
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$$ExternalSyntheticLambda5;-><init>(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;)V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhitespaceBehindFunction:Ljava/util/function/Function;

    .line 35
    if-eqz p1, :cond_1

    .line 39
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->firstElementIndex:Ljava/lang/Integer;

    .line 44
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->removedList:Ljava/util/List;

    .line 45
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "removedList should not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "firstElementIndex should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;

    .line 27
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->removedList:Ljava/util/List;

    return-object v0
.end method

.method private getIndicesBeingRemoved()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->firstElementIndex:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->firstElementIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->removedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    .line 78
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 76
    return-object v0
.end method

.method private hasOnlyWhiteSpaceForTokenFunction(Lorg/checkerframework/com/github/javaparser/JavaToken;Ljava/util/function/Function;)Z
    .locals 3
    .param p1, "token"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "token",
            "tokenFunction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/JavaToken;",
            "Ljava/util/function/Function<",
            "Lorg/checkerframework/com/github/javaparser/JavaToken;",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/JavaToken;",
            ">;>;)Z"
        }
    .end annotation

    .line 152
    .local p2, "tokenFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/checkerframework/com/github/javaparser/JavaToken;Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/JavaToken;>;>;"
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    .line 154
    .local v0, "tokenResult":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/JavaToken;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 155
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getKind()I

    move-result v1

    invoke-static {v1}, Lorg/checkerframework/com/github/javaparser/TokenTypes;->isSpaceOrTab(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhiteSpaceForTokenFunction(Lorg/checkerframework/com/github/javaparser/JavaToken;Ljava/util/function/Function;)Z

    move-result v1

    return v1

    .line 157
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getKind()I

    move-result v1

    invoke-static {v1}, Lorg/checkerframework/com/github/javaparser/TokenTypes;->isEndOfLineToken(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    return v2

    .line 160
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 164
    :cond_2
    return v2
.end method

.method private hasOnlyWhitespace(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;Ljava/util/function/Function;)Z
    .locals 5
    .param p1, "startElement"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startElement",
            "hasOnlyWhitespaceFunction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;",
            "Ljava/util/function/Function<",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 133
    .local p2, "hasOnlyWhitespaceFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 134
    .local v0, "hasOnlyWhitespace":Z
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;->isChild()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;->getElement()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    .line 136
    .local v1, "csmChild":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    .line 138
    .local v2, "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    .line 139
    .local v3, "tokenRange":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/TokenRange;>;"
    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 142
    .end local v1    # "csmChild":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;
    .end local v2    # "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    .end local v3    # "tokenRange":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/TokenRange;>;"
    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;->isToken()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;->getElement()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    .line 144
    .local v1, "token":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;->getTokenType()I

    move-result v2

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/TokenTypes;->isEndOfLineToken(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    const/4 v0, 0x1

    .line 148
    .end local v1    # "token":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;
    :cond_2
    :goto_0
    return v0
.end method

.method static synthetic lambda$null$0(Lorg/checkerframework/com/github/javaparser/JavaToken;)Ljava/util/Optional;
    .locals 1
    .param p0, "token"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "token"
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getPreviousToken()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$2(Lorg/checkerframework/com/github/javaparser/JavaToken;)Ljava/util/Optional;
    .locals 1
    .param p0, "token"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "token"
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getNextToken()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Integer;Ljava/util/List;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;
    .locals 1
    .param p0, "firstElementIndex"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "firstElementIndex",
            "removedList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;"
        }
    .end annotation

    .line 56
    .local p1, "removedList":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;-><init>(Ljava/lang/Integer;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method final getFirstElement()Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;
    .locals 2

    .line 97
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->removedList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;

    return-object v0
.end method

.method final getIndentation()Ljava/util/Optional;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->getFirstElement()Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;

    move-result-object v0

    .line 176
    .local v0, "firstElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;
    const/4 v1, 0x0

    .line 177
    .local v1, "indentation":I
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;->isChild()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 178
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;->getElement()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    .line 179
    .local v2, "csmChild":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    .line 181
    .local v3, "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    .line 182
    .local v4, "tokenRange":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/TokenRange;>;"
    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 183
    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/TokenRange;->getBegin()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v5

    .line 185
    .local v5, "begin":Lorg/checkerframework/com/github/javaparser/JavaToken;
    iget-object v6, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhitespaceJavaTokenInFrontFunction:Ljava/util/function/Function;

    invoke-interface {v6, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 186
    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getPreviousToken()Ljava/util/Optional;

    move-result-object v6

    .line 188
    .local v6, "previousToken":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/JavaToken;>;"
    :goto_0
    invoke-virtual {v6}, Ljava/util/Optional;->isPresent()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-virtual {v7}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getKind()I

    move-result v7

    invoke-static {v7}, Lorg/checkerframework/com/github/javaparser/TokenTypes;->isSpaceOrTab(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 189
    add-int/lit8 v1, v1, 0x1

    .line 191
    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-virtual {v7}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getPreviousToken()Ljava/util/Optional;

    move-result-object v6

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {v6}, Ljava/util/Optional;->isPresent()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 195
    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-virtual {v7}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getKind()I

    move-result v7

    invoke-static {v7}, Lorg/checkerframework/com/github/javaparser/TokenTypes;->isEndOfLineToken(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    return-object v7

    .line 198
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v7

    return-object v7

    .line 201
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    return-object v7

    .line 207
    .end local v2    # "csmChild":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;
    .end local v3    # "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    .end local v4    # "tokenRange":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/TokenRange;>;"
    .end local v5    # "begin":Lorg/checkerframework/com/github/javaparser/JavaToken;
    .end local v6    # "previousToken":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/JavaToken;>;"
    :cond_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    return-object v2
.end method

.method final getLastElement()Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;
    .locals 2

    .line 106
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->removedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;

    return-object v0
.end method

.method final getLastElementIndex()Ljava/lang/Integer;
    .locals 2

    .line 87
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->getIndicesBeingRemoved()Ljava/util/List;

    move-result-object v0

    .line 88
    .local v0, "indicesBeingRemoved":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    return-object v1
.end method

.method final isACompleteLine()Z
    .locals 2

    .line 123
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->getFirstElement()Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhitespaceInFrontFunction:Ljava/util/function/Function;

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhitespace(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;Ljava/util/function/Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->getLastElement()Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhitespaceBehindFunction:Ljava/util/function/Function;

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhitespace(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;Ljava/util/function/Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 123
    :goto_0
    return v0
.end method

.method final isProcessed()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->isProcessed:Z

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;",
            ">;"
        }
    .end annotation

    .line 212
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$1;-><init>(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;)V

    return-object v0
.end method

.method synthetic lambda$new$1$org-checkerframework-com-github-javaparser-printer-lexicalpreservation-RemovedGroup(Lorg/checkerframework/com/github/javaparser/JavaToken;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "begin"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "begin"
        }
    .end annotation

    .line 127
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhiteSpaceForTokenFunction(Lorg/checkerframework/com/github/javaparser/JavaToken;Ljava/util/function/Function;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$3$org-checkerframework-com-github-javaparser-printer-lexicalpreservation-RemovedGroup(Lorg/checkerframework/com/github/javaparser/JavaToken;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "end"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "end"
        }
    .end annotation

    .line 128
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhiteSpaceForTokenFunction(Lorg/checkerframework/com/github/javaparser/JavaToken;Ljava/util/function/Function;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$4$org-checkerframework-com-github-javaparser-printer-lexicalpreservation-RemovedGroup(Lorg/checkerframework/com/github/javaparser/TokenRange;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "tokenRange"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhitespaceJavaTokenInFrontFunction:Ljava/util/function/Function;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/TokenRange;->getBegin()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method synthetic lambda$new$5$org-checkerframework-com-github-javaparser-printer-lexicalpreservation-RemovedGroup(Lorg/checkerframework/com/github/javaparser/TokenRange;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "tokenRange"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhitespaceJavaTokenBehindFunction:Ljava/util/function/Function;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/TokenRange;->getEnd()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method final processed()V
    .locals 1

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->isProcessed:Z

    .line 64
    return-void
.end method
