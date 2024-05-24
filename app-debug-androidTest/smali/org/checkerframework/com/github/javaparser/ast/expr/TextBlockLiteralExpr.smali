.class public Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;
.super Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;
.source "TextBlockLiteralExpr.java"


# direct methods
.method public static synthetic $r8$lambda$4L3gRJbRKvvzdpE56YfNDyr3wYI(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->trimTrailing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NUjIrgoqisDsjVdb0QgW51kHlvw(II)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 50
    const/4 v0, 0x0

    const-string v1, "empty"

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "value"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->customInitialization()V

    .line 70
    return-void
.end method

.method private emptyOrWhitespace(Ljava/lang/String;)Z
    .locals 1
    .param p1, "rawLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rawLine"
        }
    .end annotation

    .line 190
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private indentSize(Ljava/lang/String;)I
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    return v1

    .line 201
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private isLastLine([Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 3
    .param p1, "rawLines"    # [Ljava/lang/String;
    .param p2, "lineNr"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rawLines",
            "lineNr"
        }
    .end annotation

    .line 183
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method static synthetic lambda$stripIndentOfLines$0([Ljava/lang/String;I)Lorg/checkerframework/com/github/javaparser/utils/Pair;
    .locals 3
    .param p0, "rawLines"    # [Ljava/lang/String;
    .param p1, "nr"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "rawLines",
            "nr"
        }
    .end annotation

    .line 149
    new-instance v0, Lorg/checkerframework/com/github/javaparser/utils/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-object v2, p0, p1

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/utils/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$stripIndentOfLines$3(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "commonWhiteSpacePrefixSize"    # I
    .param p1, "l"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "commonWhiteSpacePrefixSize",
            "l"
        }
    .end annotation

    .line 153
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private trimTrailing(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 208
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 209
    .local v0, "pos":I
    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 212
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, p1

    :goto_1
    return-object v1
.end method


# virtual methods
.method public accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<",
            "TR;TA;>;TA;)TR;"
        }
    .end annotation

    .line 75
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 81
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public asString()Ljava/lang/String;
    .locals 1

    .line 176
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->translateEscapes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asTextBlockLiteralExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;
    .locals 0

    .line 101
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralExpr;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;
    .locals 2

    .line 126
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/TextBlockLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/LiteralExprMetaModel;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/TextBlockLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/LiteralStringValueExprMetaModel;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/TextBlockLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/TextBlockLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/TextBlockLiteralExprMetaModel;
    .locals 1

    .line 132
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->textBlockLiteralExprMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/TextBlockLiteralExprMetaModel;

    return-object v0
.end method

.method public ifTextBlockLiteralExpr(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;",
            ">;)V"
        }
    .end annotation

    .line 112
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public isTextBlockLiteralExpr()Z
    .locals 1

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$stripIndentOfLines$1$org-checkerframework-com-github-javaparser-ast-expr-TextBlockLiteralExpr([Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/utils/Pair;)Z
    .locals 1
    .param p1, "rawLines"    # [Ljava/lang/String;
    .param p2, "l"    # Lorg/checkerframework/com/github/javaparser/utils/Pair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "rawLines",
            "l"
        }
    .end annotation

    .line 149
    iget-object v0, p2, Lorg/checkerframework/com/github/javaparser/utils/Pair;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->emptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lorg/checkerframework/com/github/javaparser/utils/Pair;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->isLastLine([Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method synthetic lambda$stripIndentOfLines$2$org-checkerframework-com-github-javaparser-ast-expr-TextBlockLiteralExpr(Lorg/checkerframework/com/github/javaparser/utils/Pair;)Ljava/lang/Integer;
    .locals 1
    .param p1, "l"    # Lorg/checkerframework/com/github/javaparser/utils/Pair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "l"
        }
    .end annotation

    .line 149
    iget-object v0, p1, Lorg/checkerframework/com/github/javaparser/utils/Pair;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->indentSize(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 87
    if-nez p1, :cond_0

    .line 88
    const/4 v0, 0x0

    return v0

    .line 89
    :cond_0
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "replacementNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "replacementNode"
        }
    .end annotation

    .line 118
    if-nez p1, :cond_0

    .line 119
    const/4 v0, 0x0

    return v0

    .line 120
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public stripIndent()Ljava/lang/String;
    .locals 2

    .line 162
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->stripIndentOfLines()Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, "\n"

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public stripIndentOfLines()Ljava/util/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\R"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "rawLines":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr$$ExternalSyntheticLambda1;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;[Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr$$ExternalSyntheticLambda2;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 153
    .local v1, "commonWhiteSpacePrefixSize":I
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr$$ExternalSyntheticLambda5;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    return-object v2
.end method

.method public toTextBlockLiteralExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;",
            ">;"
        }
    .end annotation

    .line 107
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public translateEscapes()Ljava/lang/String;
    .locals 1

    .line 169
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->stripIndent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils;->unescapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
