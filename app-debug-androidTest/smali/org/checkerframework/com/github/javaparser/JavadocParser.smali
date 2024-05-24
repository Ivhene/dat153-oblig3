.class Lorg/checkerframework/com/github/javaparser/JavadocParser;
.super Ljava/lang/Object;
.source "JavadocParser.java"


# static fields
.field private static BLOCK_PATTERN:Ljava/util/regex/Pattern;

.field private static BLOCK_TAG_PREFIX:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$in1FZXUGtMJsqf8nm2cFn960dts(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/JavadocParser;->isABlockLine(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 42
    const-string v0, "@"

    sput-object v0, Lorg/checkerframework/com/github/javaparser/JavadocParser;->BLOCK_TAG_PREFIX:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^\\s*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/com/github/javaparser/JavadocParser;->BLOCK_TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/github/javaparser/JavadocParser;->BLOCK_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cleanLines(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    sget-object v0, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "lines":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 108
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/JavadocParser$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/JavadocParser$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 124
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 126
    .local v1, "cleanedLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/JavadocParser$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/JavadocParser$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/util/List;

    .line 128
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x20

    if-eq v3, v5, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x9

    if-ne v3, v5, :cond_2

    .line 129
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 133
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 135
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 136
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 138
    :cond_4
    return-object v1
.end method

.method private static isABlockLine(Ljava/lang/String;)Z
    .locals 2
    .param p0, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/com/github/javaparser/JavadocParser;->BLOCK_TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$cleanLines$3(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "l"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "l"
        }
    .end annotation

    .line 109
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/JavadocParser;->startsWithAsterisk(Ljava/lang/String;)I

    move-result v0

    .line 110
    .local v0, "asteriskIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 111
    return-object p0

    .line 115
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_2

    .line 117
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 118
    .local v1, "c":C
    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    .line 119
    :cond_1
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 122
    .end local v1    # "c":C
    :cond_2
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$cleanLines$4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "l"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "l"
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$parse$0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "s1"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$parse$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "s"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/checkerframework/com/github/javaparser/JavadocParser;->BLOCK_TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$parse$2(Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;Ljava/lang/String;)V
    .locals 1
    .param p0, "document"    # Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;
    .param p1, "l"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "document",
            "l"
        }
    .end annotation

    .line 80
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/JavadocParser;->parseBlockTag(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;->addBlockTag(Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;)Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;
    .locals 6
    .param p0, "commentContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commentContent"
        }
    .end annotation

    .line 50
    sget-object v0, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->normalizeEolInTextBlock(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/JavadocParser;->cleanLines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 51
    .local v0, "cleanLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/JavadocParser$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/JavadocParser$$ExternalSyntheticLambda2;-><init>()V

    .line 52
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/checkerframework/com/github/javaparser/JavadocParser$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/checkerframework/com/github/javaparser/JavadocParser$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    .line 53
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 54
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    .line 55
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 58
    .local v1, "indexOfFirstBlockTag":I
    if-ne v1, v2, :cond_0

    .line 59
    sget-object v2, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/JavadocParser;->trimRight(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "descriptionText":Ljava/lang/String;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .local v3, "blockLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 62
    .end local v2    # "descriptionText":Ljava/lang/String;
    .end local v3    # "blockLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    sget-object v2, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/JavadocParser;->trimRight(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .restart local v2    # "descriptionText":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 67
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    .line 68
    invoke-static {v4}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 73
    .local v3, "tagBlock":Ljava/lang/String;
    sget-object v4, Lorg/checkerframework/com/github/javaparser/JavadocParser;->BLOCK_PATTERN:Ljava/util/regex/Pattern;

    .line 74
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->splitAsStream(Ljava/lang/CharSequence;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/JavadocParser$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/JavadocParser$$ExternalSyntheticLambda4;-><init>()V

    .line 75
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/JavadocParser$$ExternalSyntheticLambda5;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/JavadocParser$$ExternalSyntheticLambda5;-><init>()V

    .line 76
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 77
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object v3, v4

    .line 79
    .local v3, "blockLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    new-instance v4, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;->parseText(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;-><init>(Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;)V

    .line 80
    .local v4, "document":Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;
    new-instance v5, Lorg/checkerframework/com/github/javaparser/JavadocParser$$ExternalSyntheticLambda6;

    invoke-direct {v5, v4}, Lorg/checkerframework/com/github/javaparser/JavadocParser$$ExternalSyntheticLambda6;-><init>(Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;)V

    invoke-interface {v3, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 81
    return-object v4
.end method

.method public static parse(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;)Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;
    .locals 1
    .param p0, "comment"    # Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment"
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/JavadocParser;->parse(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;

    move-result-object v0

    return-object v0
.end method

.method private static parseBlockTag(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;
    .locals 3
    .param p0, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 86
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->nextWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "tagName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "rest":Ljava/lang/String;
    new-instance v2, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;

    invoke-direct {v2, v0, v1}, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method static startsWithAsterisk(Ljava/lang/String;)I
    .locals 3
    .param p0, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    .line 143
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x0

    return v0

    .line 145
    :cond_0
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    const-string v0, "\t"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    .line 146
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/JavadocParser;->startsWithAsterisk(Ljava/lang/String;)I

    move-result v0

    .line 147
    .local v0, "res":I
    if-ne v0, v1, :cond_2

    .line 148
    return v1

    .line 150
    :cond_2
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 153
    .end local v0    # "res":I
    :cond_3
    return v1
.end method

.method private static trimRight(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 96
    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 99
    :cond_0
    return-object p0
.end method
