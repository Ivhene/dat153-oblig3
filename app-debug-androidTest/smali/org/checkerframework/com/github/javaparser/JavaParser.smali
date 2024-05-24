.class public final Lorg/checkerframework/com/github/javaparser/JavaParser;
.super Ljava/lang/Object;
.source "JavaParser.java"


# instance fields
.field private astParser:Lorg/checkerframework/com/github/javaparser/GeneratedJavaParser;

.field private final configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;-><init>()V

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/JavaParser;-><init>(Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V
    .locals 1
    .param p1, "configuration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaParser;->astParser:Lorg/checkerframework/com/github/javaparser/GeneratedJavaParser;

    .line 76
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/JavaParser;->configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    .line 77
    return-void
.end method

.method private getParserForProvider(Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/GeneratedJavaParser;
    .locals 2
    .param p1, "provider"    # Lorg/checkerframework/com/github/javaparser/Provider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaParser;->astParser:Lorg/checkerframework/com/github/javaparser/GeneratedJavaParser;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParser;

    invoke-direct {v0, p1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParser;-><init>(Lorg/checkerframework/com/github/javaparser/Provider;)V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaParser;->astParser:Lorg/checkerframework/com/github/javaparser/GeneratedJavaParser;

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParser;->reset(Lorg/checkerframework/com/github/javaparser/Provider;)V

    .line 92
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaParser;->astParser:Lorg/checkerframework/com/github/javaparser/GeneratedJavaParser;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/JavaParser;->configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->getTabSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParser;->setTabSize(I)V

    .line 93
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaParser;->astParser:Lorg/checkerframework/com/github/javaparser/GeneratedJavaParser;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/JavaParser;->configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->isStoreTokens()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParser;->setStoreTokens(Z)V

    .line 94
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaParser;->configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->getLanguageLevel()Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    sget-object v0, Lorg/checkerframework/com/github/javaparser/JavaParser$1;->$SwitchMap$com$github$javaparser$ParserConfiguration$LanguageLevel:[I

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/JavaParser;->configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->getLanguageLevel()Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$LanguageLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 98
    :pswitch_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaParser;->astParser:Lorg/checkerframework/com/github/javaparser/GeneratedJavaParser;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParser;->setYieldSupported()V

    .line 101
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaParser;->astParser:Lorg/checkerframework/com/github/javaparser/GeneratedJavaParser;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$parse$1(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "encoding"    # Ljava/nio/charset/Charset;
    .param p2, "cu"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "file",
            "encoding",
            "cu"
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setStorage(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    return-void
.end method

.method static synthetic lambda$parse$5(Ljava/nio/file/Path;Ljava/nio/charset/Charset;Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)V
    .locals 0
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "encoding"    # Ljava/nio/charset/Charset;
    .param p2, "cu"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "path",
            "encoding",
            "cu"
        }
    .end annotation

    .line 276
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setStorage(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    return-void
.end method

.method static synthetic lambda$parseStubUnit$2(Ljava/io/File;Lorg/checkerframework/com/github/javaparser/ast/StubUnit;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "cu"    # Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "file",
            "cu"
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;->setStorage(Ljava/nio/file/Path;)Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    return-void
.end method

.method static synthetic lambda$parseStubUnit$4(Ljava/io/File;Lorg/checkerframework/com/github/javaparser/ast/StubUnit;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "cu"    # Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "file",
            "cu"
        }
    .end annotation

    .line 258
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;->setStorage(Ljava/nio/file/Path;)Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    return-void
.end method

.method static synthetic lambda$parseStubUnit$6(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ast/StubUnit;)V
    .locals 0
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "cu"    # Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "path",
            "cu"
        }
    .end annotation

    .line 292
    invoke-virtual {p1, p0}, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;->setStorage(Ljava/nio/file/Path;)Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    return-void
.end method

.method static synthetic lambda$parseStubUnit$8(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ast/StubUnit;)V
    .locals 0
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "cu"    # Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "path",
            "cu"
        }
    .end annotation

    .line 323
    invoke-virtual {p1, p0}, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;->setStorage(Ljava/nio/file/Path;)Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    return-void
.end method


# virtual methods
.method public getParserConfiguration()Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaParser;->configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    return-object v0
.end method

.method synthetic lambda$parse$0$org-checkerframework-com-github-javaparser-JavaParser(Lorg/checkerframework/com/github/javaparser/ParseResult;Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)V
    .locals 1
    .param p1, "result"    # Lorg/checkerframework/com/github/javaparser/ParseResult;
    .param p2, "postProcessor"    # Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "result",
            "postProcessor"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaParser;->configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-interface {p2, p1, v0}, Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;->process(Lorg/checkerframework/com/github/javaparser/ParseResult;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V

    return-void
.end method

.method synthetic lambda$parse$3$org-checkerframework-com-github-javaparser-JavaParser(Ljava/io/File;Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "cu"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "file",
            "cu"
        }
    .end annotation

    .line 242
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/JavaParser;->configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->getCharacterEncoding()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setStorage(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    return-void
.end method

.method synthetic lambda$parse$7$org-checkerframework-com-github-javaparser-JavaParser(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)V
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "cu"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "path",
            "cu"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaParser;->configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->getCharacterEncoding()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setStorage(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    return-void
.end method

.method public parse(Ljava/io/File;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 241
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->COMPILATION_UNIT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/JavaParser;->configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->getCharacterEncoding()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/io/File;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    .line 242
    .local v0, "result":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda3;-><init>(Lorg/checkerframework/com/github/javaparser/JavaParser;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 243
    return-object v0
.end method

.method public parse(Ljava/io/File;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "file",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 210
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->COMPILATION_UNIT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1, p2}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/io/File;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    .line 211
    .local v0, "result":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, p2}, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda4;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 212
    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaParser;->configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->getCharacterEncoding()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "in",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .line 156
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->COMPILATION_UNIT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1, p2}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/Reader;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .line 429
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->COMPILATION_UNIT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/io/Reader;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .line 453
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->COMPILATION_UNIT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/nio/file/Path;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 3
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->COMPILATION_UNIT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/JavaParser;->configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->getCharacterEncoding()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    .line 307
    .local v0, "result":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda1;-><init>(Lorg/checkerframework/com/github/javaparser/JavaParser;Ljava/nio/file/Path;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 308
    return-object v0
.end method

.method public parse(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 3
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "path",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 275
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->COMPILATION_UNIT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1, p2}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    .line 276
    .local v0, "result":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1, p2}, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda7;-><init>(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 277
    return-object v0
.end method

.method public parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 7
    .param p2, "provider"    # Lorg/checkerframework/com/github/javaparser/Provider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "provider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ParseStart<",
            "TN;>;",
            "Lorg/checkerframework/com/github/javaparser/Provider;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "TN;>;"
        }
    .end annotation

    .line 115
    .local p1, "start":Lorg/checkerframework/com/github/javaparser/ParseStart;, "Lorg/checkerframework/com/github/javaparser/ParseStart<TN;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {p2}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaParser;->configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->getPreProcessors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/Providers$PreProcessor;

    .line 119
    .local v1, "preProcessor":Lorg/checkerframework/com/github/javaparser/Providers$PreProcessor;
    invoke-interface {v1, p2}, Lorg/checkerframework/com/github/javaparser/Providers$PreProcessor;->process(Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object p2

    .line 120
    .end local v1    # "preProcessor":Lorg/checkerframework/com/github/javaparser/Providers$PreProcessor;
    goto :goto_0

    .line 122
    :cond_0
    invoke-direct {p0, p2}, Lorg/checkerframework/com/github/javaparser/JavaParser;->getParserForProvider(Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/GeneratedJavaParser;

    move-result-object v0

    .line 124
    .local v0, "parser":Lorg/checkerframework/com/github/javaparser/GeneratedJavaParser;
    :try_start_0
    invoke-interface {p1, v0}, Lorg/checkerframework/com/github/javaparser/ParseStart;->parse(Lorg/checkerframework/com/github/javaparser/GeneratedJavaParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 125
    .local v1, "resultNode":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ParseResult;

    iget-object v3, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParser;->problems:Ljava/util/List;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParser;->getCommentsCollection()Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lorg/checkerframework/com/github/javaparser/ParseResult;-><init>(Ljava/lang/Object;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;)V

    .line 127
    .local v2, "result":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<TN;>;"
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/JavaParser;->configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->getPostProcessors()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, v2}, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda8;-><init>(Lorg/checkerframework/com/github/javaparser/JavaParser;Lorg/checkerframework/com/github/javaparser/ParseResult;)V

    invoke-interface {v3, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 130
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getProblems()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/com/github/javaparser/Problem;->PROBLEM_BY_BEGIN_POSITION:Ljava/util/Comparator;

    invoke-interface {v3, v4}, Ljava/util/List;->sort(Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    nop

    .line 139
    :try_start_1
    invoke-interface {p2}, Lorg/checkerframework/com/github/javaparser/Provider;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    goto :goto_1

    .line 140
    :catch_0
    move-exception v3

    .line 132
    :goto_1
    return-object v2

    .line 138
    .end local v1    # "resultNode":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    .end local v2    # "result":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<TN;>;"
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 133
    :catch_1
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "Unknown error"

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "message":Ljava/lang/String;
    :goto_2
    iget-object v3, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParser;->problems:Ljava/util/List;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/Problem;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v1}, Lorg/checkerframework/com/github/javaparser/Problem;-><init>(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ParseResult;

    iget-object v4, v0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParser;->problems:Ljava/util/List;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParser;->getCommentsCollection()Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;

    move-result-object v6

    invoke-direct {v3, v5, v4, v6}, Lorg/checkerframework/com/github/javaparser/ParseResult;-><init>(Ljava/lang/Object;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    :try_start_3
    invoke-interface {p2}, Lorg/checkerframework/com/github/javaparser/Provider;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 142
    goto :goto_3

    .line 140
    :catch_2
    move-exception v4

    .line 136
    :goto_3
    return-object v3

    .line 139
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "message":Ljava/lang/String;
    :goto_4
    :try_start_4
    invoke-interface {p2}, Lorg/checkerframework/com/github/javaparser/Provider;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 142
    goto :goto_5

    .line 140
    :catch_3
    move-exception v2

    .line 143
    :goto_5
    throw v1
.end method

.method public parseAnnotation(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "annotation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "annotation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;"
        }
    .end annotation

    .line 526
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->ANNOTATION:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseAnnotationBodyDeclaration(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;"
        }
    .end annotation

    .line 538
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->ANNOTATION_BODY:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseBlock(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "blockStatement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "blockStatement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;",
            ">;"
        }
    .end annotation

    .line 477
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->BLOCK:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseBodyDeclaration(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "TT;>;"
        }
    .end annotation

    .line 551
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->CLASS_BODY:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseClassOrInterfaceType(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;",
            ">;"
        }
    .end annotation

    .line 562
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->CLASS_OR_INTERFACE_TYPE:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseExplicitConstructorInvocationStmt(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "statement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;",
            ">;"
        }
    .end annotation

    .line 596
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->EXPLICIT_CONSTRUCTOR_INVOCATION_STMT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseExpression(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "expression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "expression"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "TT;>;"
        }
    .end annotation

    .line 514
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->EXPRESSION:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseImport(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "importDeclaration"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "importDeclaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;",
            ">;"
        }
    .end annotation

    .line 501
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->IMPORT_DECLARATION:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseMethodDeclaration(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "methodDeclaration"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "methodDeclaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;",
            ">;"
        }
    .end annotation

    .line 699
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->METHOD_DECLARATION:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseModuleDeclaration(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "moduleDeclaration"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "moduleDeclaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;",
            ">;"
        }
    .end annotation

    .line 663
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->MODULE_DECLARATION:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseModuleDirective(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "moduleDirective"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "moduleDirective"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;",
            ">;"
        }
    .end annotation

    .line 675
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->MODULE_DIRECTIVE:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseName(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "qualifiedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qualifiedName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Name;",
            ">;"
        }
    .end annotation

    .line 607
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->NAME:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parsePackageDeclaration(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "packageDeclaration"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageDeclaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;",
            ">;"
        }
    .end annotation

    .line 640
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->PACKAGE_DECLARATION:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseParameter(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            ">;"
        }
    .end annotation

    .line 629
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->PARAMETER:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseResource(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "classLoader",
            "path",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 402
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->COMPILATION_UNIT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/Providers;->resourceProvider(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseResource(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->COMPILATION_UNIT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/JavaParser;->configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->getCharacterEncoding()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/checkerframework/com/github/javaparser/Providers;->resourceProvider(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseResource(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "path",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 370
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->COMPILATION_UNIT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1, p2}, Lorg/checkerframework/com/github/javaparser/Providers;->resourceProvider(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseResourceStubUnit(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "classLoader",
            "path",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/StubUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->STUB_UNIT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/Providers;->resourceProvider(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseResourceStubUnit(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/StubUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->STUB_UNIT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->resourceProvider(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseResourceStubUnit(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "path",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/StubUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->STUB_UNIT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1, p2}, Lorg/checkerframework/com/github/javaparser/Providers;->resourceProvider(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseSimpleName(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;",
            ">;"
        }
    .end annotation

    .line 618
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->SIMPLE_NAME:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseStatement(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "statement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "statement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;",
            ">;"
        }
    .end annotation

    .line 489
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->STATEMENT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseStubUnit(Ljava/io/File;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/StubUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 257
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->STUB_UNIT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/io/File;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    .line 258
    .local v0, "result":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<Lorg/checkerframework/com/github/javaparser/ast/StubUnit;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1}, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda5;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 259
    return-object v0
.end method

.method public parseStubUnit(Ljava/io/File;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "file",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/StubUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 226
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->STUB_UNIT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1, p2}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/io/File;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    .line 227
    .local v0, "result":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<Lorg/checkerframework/com/github/javaparser/ast/StubUnit;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1}, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda6;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 228
    return-object v0
.end method

.method public parseStubUnit(Ljava/io/InputStream;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/StubUnit;",
            ">;"
        }
    .end annotation

    .line 194
    sget-object v0, Lorg/checkerframework/com/github/javaparser/Providers;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseStubUnit(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseStubUnit(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "in",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/StubUnit;",
            ">;"
        }
    .end annotation

    .line 169
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->STUB_UNIT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1, p2}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseStubUnit(Ljava/io/Reader;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/StubUnit;",
            ">;"
        }
    .end annotation

    .line 441
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->STUB_UNIT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/io/Reader;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseStubUnit(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/StubUnit;",
            ">;"
        }
    .end annotation

    .line 465
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->STUB_UNIT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseStubUnit(Ljava/nio/file/Path;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 3
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/StubUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->STUB_UNIT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/nio/file/Path;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    .line 323
    .local v0, "result":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<Lorg/checkerframework/com/github/javaparser/ast/StubUnit;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda2;-><init>(Ljava/nio/file/Path;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 324
    return-object v0
.end method

.method public parseStubUnit(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 3
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "path",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/StubUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->STUB_UNIT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1, p2}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    .line 292
    .local v0, "result":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<Lorg/checkerframework/com/github/javaparser/ast/StubUnit;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda0;-><init>(Ljava/nio/file/Path;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 293
    return-object v0
.end method

.method public parseType(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            ">;"
        }
    .end annotation

    .line 573
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->TYPE:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseTypeDeclaration(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "typeDeclaration"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeDeclaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<",
            "*>;>;"
        }
    .end annotation

    .line 651
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->TYPE_DECLARATION:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseTypeParameter(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "typeParameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeParameter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;",
            ">;"
        }
    .end annotation

    .line 687
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->TYPE_PARAMETER:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public parseVariableDeclarationExpr(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "declaration"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "declaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;",
            ">;"
        }
    .end annotation

    .line 585
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->VARIABLE_DECLARATION_EXPR:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method
