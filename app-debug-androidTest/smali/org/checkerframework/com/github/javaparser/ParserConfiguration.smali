.class public Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
.super Ljava/lang/Object;
.source "ParserConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;
    }
.end annotation


# instance fields
.field private attributeComments:Z

.field private characterEncoding:Ljava/nio/charset/Charset;

.field private doNotAssignCommentsPrecedingEmptyLines:Z

.field private ignoreAnnotationsWhenAttributingComments:Z

.field private languageLevel:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

.field private lexicalPreservationEnabled:Z

.field private final postProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final preProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/Providers$PreProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private preprocessUnicodeEscapes:Z

.field private storeTokens:Z

.field private symbolResolver:Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;

.field private tabSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->storeTokens:Z

    .line 137
    iput-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->attributeComments:Z

    .line 138
    iput-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->doNotAssignCommentsPrecedingEmptyLines:Z

    .line 139
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->ignoreAnnotationsWhenAttributingComments:Z

    .line 140
    iput-boolean v1, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->lexicalPreservationEnabled:Z

    .line 141
    iput-boolean v1, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->preprocessUnicodeEscapes:Z

    .line 142
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->symbolResolver:Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;

    .line 143
    iput v0, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->tabSize:I

    .line 144
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_8:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->languageLevel:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    .line 145
    sget-object v0, Lorg/checkerframework/com/github/javaparser/Providers;->UTF8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->characterEncoding:Ljava/nio/charset/Charset;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->preProcessors:Ljava/util/List;

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->postProcessors:Ljava/util/List;

    .line 180
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$1UnicodeEscapeProcessor;

    invoke-direct {v2, p0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$1UnicodeEscapeProcessor;-><init>(Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V

    .line 181
    .local v2, "unicodeProcessor":Lorg/checkerframework/com/github/javaparser/ParserConfiguration$1UnicodeEscapeProcessor;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$$ExternalSyntheticLambda7;-><init>(Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method static synthetic lambda$new$0(Lorg/checkerframework/com/github/javaparser/ParseResult;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V
    .locals 1
    .param p0, "result"    # Lorg/checkerframework/com/github/javaparser/ParseResult;
    .param p1, "configuration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "result",
            "configuration"
        }
    .end annotation

    .line 184
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->isLexicalPreservationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ParseResult;->ifSuccessful(Ljava/util/function/Consumer;)V

    .line 187
    :cond_0
    return-void
.end method

.method static synthetic lambda$new$3(Lorg/checkerframework/com/github/javaparser/ParseResult;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V
    .locals 1
    .param p0, "result"    # Lorg/checkerframework/com/github/javaparser/ParseResult;
    .param p1, "configuration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "result",
            "configuration"
        }
    .end annotation

    .line 189
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->isAttributeComments()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$$ExternalSyntheticLambda1;-><init>(Lorg/checkerframework/com/github/javaparser/ParseResult;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ParseResult;->ifSuccessful(Ljava/util/function/Consumer;)V

    .line 194
    :cond_0
    return-void
.end method

.method static synthetic lambda$new$8(Lorg/checkerframework/com/github/javaparser/ParseResult;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V
    .locals 2
    .param p0, "result"    # Lorg/checkerframework/com/github/javaparser/ParseResult;
    .param p1, "configuration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "result",
            "configuration"
        }
    .end annotation

    .line 206
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->getSymbolResolver()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$$ExternalSyntheticLambda2;-><init>(Lorg/checkerframework/com/github/javaparser/ParseResult;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$null$1(Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;)V
    .locals 2
    .param p0, "configuration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .param p1, "resultNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "comments"    # Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "configuration",
            "resultNode",
            "comments"
        }
    .end annotation

    .line 192
    new-instance v0, Lorg/checkerframework/com/github/javaparser/CommentsInserter;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/CommentsInserter;-><init>(Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V

    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;->copy()Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;->getComments()Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/com/github/javaparser/CommentsInserter;->insertComments(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/TreeSet;)V

    return-void
.end method

.method static synthetic lambda$null$2(Lorg/checkerframework/com/github/javaparser/ParseResult;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 2
    .param p0, "result"    # Lorg/checkerframework/com/github/javaparser/ParseResult;
    .param p1, "configuration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .param p2, "resultNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "result",
            "configuration",
            "resultNode"
        }
    .end annotation

    .line 190
    nop

    .line 191
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getCommentsCollection()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1, p2}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$$ExternalSyntheticLambda9;-><init>(Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 190
    return-void
.end method

.method static synthetic lambda$null$4(Lorg/checkerframework/com/github/javaparser/ParseResult;Lorg/checkerframework/com/github/javaparser/Problem;)V
    .locals 1
    .param p0, "result"    # Lorg/checkerframework/com/github/javaparser/ParseResult;
    .param p1, "newProblem"    # Lorg/checkerframework/com/github/javaparser/Problem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "result",
            "newProblem"
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getProblems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$null$6(Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 1
    .param p0, "symbolResolver"    # Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;
    .param p1, "resultNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "symbolResolver",
            "resultNode"
        }
    .end annotation

    .line 208
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node;->SYMBOL_RESOLVER_KEY:Lorg/checkerframework/com/github/javaparser/ast/DataKey;

    invoke-virtual {p1, v0, p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->setData(Lorg/checkerframework/com/github/javaparser/ast/DataKey;Ljava/lang/Object;)V

    .line 211
    :cond_0
    return-void
.end method

.method static synthetic lambda$null$7(Lorg/checkerframework/com/github/javaparser/ParseResult;Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;)V
    .locals 1
    .param p0, "result"    # Lorg/checkerframework/com/github/javaparser/ParseResult;
    .param p1, "symbolResolver"    # Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "result",
            "symbolResolver"
        }
    .end annotation

    .line 207
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$$ExternalSyntheticLambda3;-><init>(Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;)V

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ParseResult;->ifSuccessful(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public getCharacterEncoding()Ljava/nio/charset/Charset;
    .locals 1

    .line 334
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->characterEncoding:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getLanguageLevel()Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->languageLevel:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    return-object v0
.end method

.method public getPostProcessors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;",
            ">;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->postProcessors:Ljava/util/List;

    return-object v0
.end method

.method public getPreProcessors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/Providers$PreProcessor;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->preProcessors:Ljava/util/List;

    return-object v0
.end method

.method public getSymbolResolver()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->symbolResolver:Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getTabSize()I
    .locals 1

    .line 259
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->tabSize:I

    return v0
.end method

.method public isAttributeComments()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->attributeComments:Z

    return v0
.end method

.method public isDoNotAssignCommentsPrecedingEmptyLines()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->doNotAssignCommentsPrecedingEmptyLines:Z

    return v0
.end method

.method public isIgnoreAnnotationsWhenAttributingComments()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->ignoreAnnotationsWhenAttributingComments:Z

    return v0
.end method

.method public isLexicalPreservationEnabled()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->lexicalPreservationEnabled:Z

    return v0
.end method

.method public isPreprocessUnicodeEscapes()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->preprocessUnicodeEscapes:Z

    return v0
.end method

.method public isStoreTokens()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->storeTokens:Z

    return v0
.end method

.method synthetic lambda$new$5$org-checkerframework-com-github-javaparser-ParserConfiguration(Lorg/checkerframework/com/github/javaparser/ParseResult;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V
    .locals 5
    .param p1, "result"    # Lorg/checkerframework/com/github/javaparser/ParseResult;
    .param p2, "configuration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "result",
            "configuration"
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->getLanguageLevel()Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    move-result-object v0

    .line 197
    .local v0, "languageLevel":Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;
    if-eqz v0, :cond_1

    .line 198
    iget-object v1, v0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->postProcessor:Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, v0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->postProcessor:Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;

    invoke-interface {v1, p1, p2}, Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;->process(Lorg/checkerframework/com/github/javaparser/ParseResult;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V

    .line 201
    :cond_0
    iget-object v1, v0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->validator:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, v0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->validator:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/ParseResult;)V

    invoke-direct {v3, v4}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;->accept(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    .line 205
    :cond_1
    return-void
.end method

.method public setAttributeComments(Z)Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .locals 0
    .param p1, "attributeComments"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attributeComments"
        }
    .end annotation

    .line 224
    iput-boolean p1, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->attributeComments:Z

    .line 225
    return-object p0
.end method

.method public setCharacterEncoding(Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .locals 0
    .param p1, "characterEncoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "characterEncoding"
        }
    .end annotation

    .line 341
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->characterEncoding:Ljava/nio/charset/Charset;

    .line 342
    return-object p0
.end method

.method public setDoNotAssignCommentsPrecedingEmptyLines(Z)Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .locals 0
    .param p1, "doNotAssignCommentsPrecedingEmptyLines"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doNotAssignCommentsPrecedingEmptyLines"
        }
    .end annotation

    .line 233
    iput-boolean p1, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->doNotAssignCommentsPrecedingEmptyLines:Z

    .line 234
    return-object p0
.end method

.method public setIgnoreAnnotationsWhenAttributingComments(Z)Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .locals 0
    .param p1, "ignoreAnnotationsWhenAttributingComments"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignoreAnnotationsWhenAttributingComments"
        }
    .end annotation

    .line 242
    iput-boolean p1, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->ignoreAnnotationsWhenAttributingComments:Z

    .line 243
    return-object p0
.end method

.method public setLanguageLevel(Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;)Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .locals 0
    .param p1, "languageLevel"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "languageLevel"
        }
    .end annotation

    .line 309
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->languageLevel:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    .line 310
    return-object p0
.end method

.method public setLexicalPreservationEnabled(Z)Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .locals 0
    .param p1, "lexicalPreservationEnabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lexicalPreservationEnabled"
        }
    .end annotation

    .line 277
    iput-boolean p1, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->lexicalPreservationEnabled:Z

    .line 278
    return-object p0
.end method

.method public setPreprocessUnicodeEscapes(Z)Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .locals 0
    .param p1, "preprocessUnicodeEscapes"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preprocessUnicodeEscapes"
        }
    .end annotation

    .line 325
    iput-boolean p1, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->preprocessUnicodeEscapes:Z

    .line 326
    return-object p0
.end method

.method public setStoreTokens(Z)Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .locals 1
    .param p1, "storeTokens"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "storeTokens"
        }
    .end annotation

    .line 247
    iput-boolean p1, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->storeTokens:Z

    .line 248
    if-nez p1, :cond_0

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->setAttributeComments(Z)Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    .line 251
    :cond_0
    return-object p0
.end method

.method public setSymbolResolver(Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;)Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .locals 0
    .param p1, "symbolResolver"    # Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "symbolResolver"
        }
    .end annotation

    .line 296
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->symbolResolver:Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;

    .line 297
    return-object p0
.end method

.method public setTabSize(I)Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .locals 0
    .param p1, "tabSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabSize"
        }
    .end annotation

    .line 267
    iput p1, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->tabSize:I

    .line 268
    return-object p0
.end method
