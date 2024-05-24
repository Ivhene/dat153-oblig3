.class Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;
.super Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver;
.source "LexicalPreservingPrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Observer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$1;

    .line 118
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;-><init>()V

    return-void
.end method

.method private findChildTextElementForComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;)Ljava/util/List;
    .locals 4
    .param p1, "oldValue"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .param p2, "nodeText"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldValue",
            "nodeText"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;",
            ">;"
        }
    .end annotation

    .line 202
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda1;-><init>()V

    .line 203
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda2;-><init>()V

    .line 204
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda3;-><init>()V

    .line 205
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda4;-><init>(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)V

    .line 206
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 207
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 209
    .local v0, "matchingChildElements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 211
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda5;-><init>(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)V

    .line 212
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 213
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    .line 216
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 220
    return-object v0

    .line 217
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The matching child text element for the comment to be removed could not be found."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private findTokenTextElementForComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;)Ljava/util/List;
    .locals 3
    .param p1, "oldValue"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .param p2, "nodeText"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldValue",
            "nodeText"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;",
            ">;"
        }
    .end annotation

    .line 226
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda0;-><init>()V

    .line 228
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda6;-><init>()V

    .line 229
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda7;-><init>(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)V

    .line 230
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 231
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .local v0, "matchingTokens":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;>;"
    goto :goto_0

    .line 232
    .end local v0    # "matchingTokens":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;>;"
    :cond_0
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda8;-><init>()V

    .line 234
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda9;-><init>()V

    .line 235
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda10;-><init>(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)V

    .line 236
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 237
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .restart local v0    # "matchingTokens":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;>;"
    goto :goto_0

    .line 239
    .end local v0    # "matchingTokens":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;>;"
    :cond_1
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda11;-><init>()V

    .line 240
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda12;-><init>()V

    .line 241
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda13;-><init>(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)V

    .line 242
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 243
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 246
    .restart local v0    # "matchingTokens":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 248
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda14;-><init>(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)V

    .line 249
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 250
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    .line 253
    :cond_2
    return-object v0
.end method

.method private fixIndentOfMovedNode(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;I)V
    .locals 5
    .param p1, "nodeText"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeText",
            "index"
        }
    .end annotation

    .line 271
    if-gtz p2, :cond_0

    .line 272
    return-void

    .line 275
    :cond_0
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 276
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v1

    .line 277
    .local v1, "spaceCandidate":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isSpaceOrTab()Z

    move-result v2

    if-nez v2, :cond_2

    .line 278
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isNewline()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v2, p2, -0x1

    if-eq v0, v2, :cond_3

    .line 279
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    add-int/lit8 v3, p2, -0x1

    sub-int/2addr v3, v0

    if-ge v2, v3, :cond_1

    .line 280
    new-instance v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    sget-object v4, Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;->SPACE:Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;->getKind()I

    move-result v4

    invoke-direct {v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(I)V

    invoke-virtual {p1, p2, v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(ILorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)V

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "j":I
    :cond_1
    goto :goto_2

    .line 275
    .end local v1    # "spaceCandidate":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 286
    .end local v0    # "i":I
    :cond_3
    :goto_2
    return-void
.end method

.method private getIndexOfComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;)I
    .locals 4
    .param p1, "oldValue"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .param p2, "nodeText"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldValue",
            "nodeText"
        }
    .end annotation

    .line 184
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->findTokenTextElementForComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;)Ljava/util/List;

    move-result-object v0

    .line 186
    .local v0, "matchingTokens":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 187
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    .line 188
    .local v1, "matchingElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->matchByRange()Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->and(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->findElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;)I

    move-result v1

    .line 189
    .local v1, "index":I
    goto :goto_0

    .line 191
    .end local v1    # "index":I
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->findChildTextElementForComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;)Ljava/util/List;

    move-result-object v1

    .line 192
    .local v1, "matchingChilds":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    .line 193
    .local v2, "matchingChild":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;->matchByRange()Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;->and(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->findElement(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;)I

    move-result v3

    move v1, v3

    .line 196
    .end local v2    # "matchingChild":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;
    .local v1, "index":I
    :goto_0
    return v1
.end method

.method private isEqualRange(Ljava/util/Optional;Ljava/util/Optional;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "range1",
            "range2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/Range;",
            ">;",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/Range;",
            ">;)Z"
        }
    .end annotation

    .line 257
    .local p1, "range1":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/Range;>;"
    .local p2, "range2":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/Range;>;"
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/Range;

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 261
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$findChildTextElementForComment$0(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 1
    .param p0, "e"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isChild()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$findChildTextElementForComment$1(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;
    .locals 1
    .param p0, "c"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "c"
        }
    .end annotation

    .line 204
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    return-object v0
.end method

.method static synthetic lambda$findChildTextElementForComment$2(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;)Z
    .locals 1
    .param p0, "c"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "c"
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;->isComment()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$findChildTextElementForComment$3(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;)Z
    .locals 2
    .param p0, "oldValue"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .param p1, "c"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "oldValue",
            "c"
        }
    .end annotation

    .line 206
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;->getChild()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$findTokenTextElementForComment$10(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;)Z
    .locals 3
    .param p0, "oldValue"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .param p1, "t"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "oldValue",
            "t"
        }
    .end annotation

    .line 236
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getText()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$findTokenTextElementForComment$11(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 1
    .param p0, "e"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    .line 240
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isToken(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$findTokenTextElementForComment$12(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    .locals 1
    .param p0, "e"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    .line 241
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    return-object v0
.end method

.method static synthetic lambda$findTokenTextElementForComment$13(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;)Z
    .locals 3
    .param p0, "oldValue"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .param p1, "t"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "oldValue",
            "t"
        }
    .end annotation

    .line 242
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$findTokenTextElementForComment$5(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 1
    .param p0, "e"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    .line 228
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isToken(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$findTokenTextElementForComment$6(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    .locals 1
    .param p0, "e"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    .line 229
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    return-object v0
.end method

.method static synthetic lambda$findTokenTextElementForComment$7(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;)Z
    .locals 3
    .param p0, "oldValue"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .param p1, "t"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "oldValue",
            "t"
        }
    .end annotation

    .line 230
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getText()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$findTokenTextElementForComment$8(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 1
    .param p0, "e"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    .line 234
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isToken(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$findTokenTextElementForComment$9(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    .locals 1
    .param p0, "e"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    .line 235
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    return-object v0
.end method


# virtual methods
.method public concreteListChange(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver$ListChangeType;ILorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 4
    .param p1, "changedList"    # Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .param p2, "type"    # Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver$ListChangeType;
    .param p3, "index"    # I
    .param p4, "nodeAddedOrRemoved"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changedList",
            "type",
            "index",
            "nodeAddedOrRemoved"
        }
    .end annotation

    .line 290
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->getOrCreateNodeText(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object v0

    .line 292
    .local v0, "nodeText":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver$ListChangeType;->REMOVAL:Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver$ListChangeType;

    if-ne p2, v1, :cond_0

    .line 293
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->access$100()Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->access$200(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculateListRemovalDifference(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/NodeList;I)Ljava/util/List;

    move-result-object v1

    .local v1, "differenceElements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;>;"
    goto :goto_0

    .line 294
    .end local v1    # "differenceElements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;>;"
    :cond_0
    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver$ListChangeType;->ADDITION:Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver$ListChangeType;

    if-ne p2, v1, :cond_1

    .line 295
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->access$100()Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->access$200(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p3, p4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculateListAdditionDifference(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/NodeList;ILorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/util/List;

    move-result-object v1

    .line 300
    .restart local v1    # "differenceElements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;>;"
    :goto_0
    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;-><init>(Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 301
    .local v2, "difference":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->apply()V

    .line 302
    return-void

    .line 297
    .end local v1    # "differenceElements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;>;"
    .end local v2    # "difference":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public concreteListReplacement(Lorg/checkerframework/com/github/javaparser/ast/NodeList;ILorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 4
    .param p1, "changedList"    # Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .param p2, "index"    # I
    .param p3, "oldValue"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p4, "newValue"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changedList",
            "index",
            "oldValue",
            "newValue"
        }
    .end annotation

    .line 306
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->getOrCreateNodeText(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object v0

    .line 307
    .local v0, "nodeText":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->access$100()Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->access$200(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, p4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculateListReplacementDifference(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/NodeList;ILorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/util/List;

    move-result-object v1

    .line 309
    .local v1, "differenceElements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;>;"
    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;-><init>(Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 310
    .local v2, "difference":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Difference;->apply()V

    .line 311
    return-void
.end method

.method public concretePropertyChange(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "observedNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "observedNode",
            "property",
            "oldValue",
            "newValue"
        }
    .end annotation

    .line 122
    if-eqz p3, :cond_0

    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p3, :cond_2

    if-nez p4, :cond_2

    .line 123
    :cond_1
    return-void

    .line 125
    :cond_2
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->RANGE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    if-eq p2, v0, :cond_e

    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->COMMENTED_NODE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    if-ne p2, v0, :cond_3

    goto/16 :goto_1

    .line 128
    :cond_3
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->COMMENT:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    if-ne p2, v0, :cond_c

    .line 129
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 133
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->getOrCreateNodeText(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object v0

    .line 135
    .local v0, "nodeText":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    if-nez p3, :cond_4

    .line 137
    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->findChild(Lorg/checkerframework/com/github/javaparser/ast/Node;)I

    move-result v1

    .line 140
    .local v1, "index":I
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->fixIndentOfMovedNode(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;I)V

    .line 142
    move-object v2, p4

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addChild(ILorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 143
    add-int/lit8 v2, v1, 0x1

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/TokenTypes;->eolTokenKind()I

    move-result v3

    sget-object v4, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(IILjava/lang/String;)V

    .line 144
    .end local v1    # "index":I
    goto/16 :goto_0

    :cond_4
    if-nez p4, :cond_8

    .line 145
    instance-of v1, p3, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    if-eqz v1, :cond_7

    .line 146
    move-object v1, p3

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->isOrphan()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 147
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->getOrCreateNodeText(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object v0

    .line 149
    :cond_5
    move-object v1, p3

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->getIndexOfComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;)I

    move-result v1

    .line 150
    .restart local v1    # "index":I
    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    .line 151
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isNewline()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 152
    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    .line 154
    .end local v1    # "index":I
    :cond_6
    goto :goto_0

    .line 155
    :cond_7
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 158
    :cond_8
    instance-of v1, p3, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;

    if-eqz v1, :cond_a

    .line 159
    move-object v1, p3

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->findTokenTextElementForComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;)Ljava/util/List;

    move-result-object v1

    .line 161
    .local v1, "matchingTokens":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 165
    move-object v2, p4

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;

    .line 166
    .local v2, "newJavadocComment":Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    .line 167
    .local v3, "matchingElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->matchByRange()Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->and(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/**"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "*/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    invoke-direct {v5, v7, v6}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->replace(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)V

    .line 168
    .end local v1    # "matchingTokens":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;>;"
    .end local v2    # "newJavadocComment":Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;
    .end local v3    # "matchingElement":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    goto :goto_0

    .line 162
    .restart local v1    # "matchingTokens":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;>;"
    :cond_9
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The matching comment to be replaced could not be found"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 169
    .end local v1    # "matchingTokens":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;>;"
    :cond_a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 130
    .end local v0    # "nodeText":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 173
    :cond_c
    :goto_0
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->getOrCreateNodeText(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object v0

    .line 175
    .restart local v0    # "nodeText":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    if-eqz v0, :cond_d

    .line 179
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->access$100()Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;

    move-result-object v1

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatePropertyChange(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    return-void

    .line 176
    :cond_d
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    .end local v0    # "nodeText":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;
    :cond_e
    :goto_1
    return-void
.end method

.method synthetic lambda$findChildTextElementForComment$4$org-checkerframework-com-github-javaparser-printer-lexicalpreservation-LexicalPreservingPrinter$Observer(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;)Z
    .locals 2
    .param p1, "oldValue"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .param p2, "t"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "oldValue",
            "t"
        }
    .end annotation

    .line 212
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;->getChild()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->getRange()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->isEqualRange(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$findTokenTextElementForComment$14$org-checkerframework-com-github-javaparser-printer-lexicalpreservation-LexicalPreservingPrinter$Observer(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;)Z
    .locals 2
    .param p1, "oldValue"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .param p2, "t"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "oldValue",
            "t"
        }
    .end annotation

    .line 249
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getToken()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->getRange()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->isEqualRange(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    return v0
.end method
