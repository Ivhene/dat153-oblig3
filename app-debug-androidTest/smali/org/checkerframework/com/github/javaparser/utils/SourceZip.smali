.class public Lorg/checkerframework/com/github/javaparser/utils/SourceZip;
.super Ljava/lang/Object;
.source "SourceZip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/utils/SourceZip$Callback;
    }
.end annotation


# instance fields
.field private parserConfiguration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

.field private final zipPath:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1
    .param p1, "zipPath"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zipPath"
        }
    .end annotation

    .line 59
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/utils/SourceZip;-><init>(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V
    .locals 3
    .param p1, "zipPath"    # Ljava/nio/file/Path;
    .param p2, "configuration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zipPath",
            "configuration"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {p2}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-interface {p1}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceZip;->zipPath:Ljava/nio/file/Path;

    .line 73
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceZip;->parserConfiguration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/function/Supplier;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/SourceZip$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/github/javaparser/utils/SourceZip$$ExternalSyntheticLambda4;-><init>(Lorg/checkerframework/com/github/javaparser/utils/SourceZip;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "New source zip at \"%s\""

    invoke-static {v1, v0}, Lorg/checkerframework/com/github/javaparser/utils/Log;->info(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    .line 75
    return-void
.end method

.method static synthetic lambda$parse$2(Ljava/util/List;Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParseResult;)V
    .locals 1
    .param p0, "results"    # Ljava/util/List;
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "result"    # Lorg/checkerframework/com/github/javaparser/ParseResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000,
            0x1000
        }
        names = {
            "results",
            "path",
            "result"
        }
    .end annotation

    .line 88
    new-instance v0, Lorg/checkerframework/com/github/javaparser/utils/Pair;

    invoke-direct {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$parse$4(Ljava/util/zip/ZipEntry;)Ljava/lang/Object;
    .locals 1
    .param p0, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "entry"
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getParserConfiguration()Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceZip;->parserConfiguration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    return-object v0
.end method

.method public getZipPath()Ljava/nio/file/Path;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceZip;->zipPath:Ljava/nio/file/Path;

    return-object v0
.end method

.method synthetic lambda$new$0$org-checkerframework-com-github-javaparser-utils-SourceZip()Ljava/lang/Object;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceZip;->zipPath:Ljava/nio/file/Path;

    return-object v0
.end method

.method synthetic lambda$parse$1$org-checkerframework-com-github-javaparser-utils-SourceZip()Ljava/lang/Object;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceZip;->zipPath:Ljava/nio/file/Path;

    return-object v0
.end method

.method synthetic lambda$parse$3$org-checkerframework-com-github-javaparser-utils-SourceZip()Ljava/lang/Object;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceZip;->zipPath:Ljava/nio/file/Path;

    return-object v0
.end method

.method public parse()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/utils/Pair<",
            "Ljava/nio/file/Path;",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/function/Supplier;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/SourceZip$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/github/javaparser/utils/SourceZip$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/utils/SourceZip;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Parsing zip at \"%s\""

    invoke-static {v1, v0}, Lorg/checkerframework/com/github/javaparser/utils/Log;->info(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/utils/Pair<Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParseResult<Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;>;>;>;"
    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/SourceZip$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/checkerframework/com/github/javaparser/utils/SourceZip$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lorg/checkerframework/com/github/javaparser/utils/SourceZip;->parse(Lorg/checkerframework/com/github/javaparser/utils/SourceZip$Callback;)Lorg/checkerframework/com/github/javaparser/utils/SourceZip;

    .line 89
    return-object v0
.end method

.method public parse(Lorg/checkerframework/com/github/javaparser/utils/SourceZip$Callback;)Lorg/checkerframework/com/github/javaparser/utils/SourceZip;
    .locals 9
    .param p1, "callback"    # Lorg/checkerframework/com/github/javaparser/utils/SourceZip$Callback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/util/function/Supplier;

    new-instance v2, Lorg/checkerframework/com/github/javaparser/utils/SourceZip$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/checkerframework/com/github/javaparser/utils/SourceZip$$ExternalSyntheticLambda2;-><init>(Lorg/checkerframework/com/github/javaparser/utils/SourceZip;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Parsing zip at \"%s\""

    invoke-static {v2, v1}, Lorg/checkerframework/com/github/javaparser/utils/Log;->info(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    .line 102
    new-instance v1, Lorg/checkerframework/com/github/javaparser/JavaParser;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceZip;->parserConfiguration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-direct {v1, v2}, Lorg/checkerframework/com/github/javaparser/JavaParser;-><init>(Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V

    .line 103
    .local v1, "javaParser":Lorg/checkerframework/com/github/javaparser/JavaParser;
    new-instance v2, Ljava/util/zip/ZipFile;

    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceZip;->zipPath:Ljava/nio/file/Path;

    invoke-interface {v4}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 104
    .local v2, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_0
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 105
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".java"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 106
    const-string v6, "Parsing zip entry \"%s\""

    new-array v7, v0, [Ljava/util/function/Supplier;

    new-instance v8, Lorg/checkerframework/com/github/javaparser/utils/SourceZip$$ExternalSyntheticLambda3;

    invoke-direct {v8, v5}, Lorg/checkerframework/com/github/javaparser/utils/SourceZip$$ExternalSyntheticLambda3;-><init>(Ljava/util/zip/ZipEntry;)V

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Lorg/checkerframework/com/github/javaparser/utils/Log;->info(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    .line 107
    sget-object v6, Lorg/checkerframework/com/github/javaparser/ParseStart;->COMPILATION_UNIT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    .line 108
    invoke-virtual {v2, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/io/InputStream;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v7

    .line 107
    invoke-virtual {v1, v6, v7}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v6

    .line 109
    .local v6, "result":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;>;"
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    invoke-interface {p1, v7, v6}, Lorg/checkerframework/com/github/javaparser/utils/SourceZip$Callback;->process(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParseResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "result":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;>;"
    :cond_0
    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    .line 113
    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    return-object p0

    .line 103
    .restart local v2    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_0
    move-exception v0

    .end local v1    # "javaParser":Lorg/checkerframework/com/github/javaparser/JavaParser;
    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .end local p1    # "callback":Lorg/checkerframework/com/github/javaparser/utils/SourceZip$Callback;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    .restart local v1    # "javaParser":Lorg/checkerframework/com/github/javaparser/JavaParser;
    .restart local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local p1    # "callback":Lorg/checkerframework/com/github/javaparser/utils/SourceZip$Callback;
    :catchall_1
    move-exception v3

    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
.end method

.method public setParserConfiguration(Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)Lorg/checkerframework/com/github/javaparser/utils/SourceZip;
    .locals 0
    .param p1, "parserConfiguration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parserConfiguration"
        }
    .end annotation

    .line 145
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceZip;->parserConfiguration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    .line 147
    return-object p0
.end method
